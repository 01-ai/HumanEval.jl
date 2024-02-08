using IterTools: groupby

struct HumanEvalTask
    task_id::String
    entrypoint::String
    prompt::String
    solution::String
    basic_test_cases::String
    plus_test_cases::String
end

Base.nameof(t::HumanEvalTask) = "$(t.task_id)_$(t.entrypoint)"

export get_tasks

function get_tasks()
    task_dir = joinpath(@__DIR__, "tasks")
    test_dir = joinpath(@__DIR__, "..", "test")
    tasks = HumanEvalTask[]
    for f in sort(readdir(task_dir))
        task_id, entrypoint = split(splitext(f)[1], '_', limit=2)
        prompt, solution = extract_prompt_and_solution(read(joinpath(task_dir, f), String), entrypoint)
        basic_test_file = joinpath(test_dir, "basic", "$(task_id)_$(entrypoint)_test.jl")
        basic_test_cases = read(joinpath(task_dir, basic_test_file), String)
        evalplus_test_file = joinpath(test_dir, "evalplus", "$(task_id)_$(entrypoint)_HumanEvalPlus_v0_1_9_test.jl")

        evalplus_test_cases = isfile(evalplus_test_file) ? read(evalplus_test_file, String) : ""

        push!(
            tasks,
            HumanEvalTask(
                task_id,
                entrypoint,
                prompt,
                solution,
                basic_test_cases,
                evalplus_test_cases,
            ),
        )
    end
    tasks
end

function extract_prompt_and_solution(s, entrypoint)
    lines = split(s, "\n", keepempty=true)
    i = findlast(l -> startswith(l, "function $entrypoint"), lines)
    # !!! unlike the prompt use in Python, the signature line is not included.
    (join(lines[1:i-1], "\n"), join(lines[i:end], "\n"))
end

#####

function extract_julia_code_blocks(s)
    res = []
    lines = split(s, "\n")
    inds = findall(x -> startswith(x, "```"), lines)

    if length(inds) == 0
        try
            Meta.parseall(s)
            push!(res, s)
        catch e
        end
    elseif length(inds) == 1
        code_lines = lines[1:inds[1]-1]
        code = join(code_lines, "\n")
        try
            Meta.parseall(code)
            push!(res, code)
        catch e
        end
    else
        openings = []
        for i in inds
            if strip(lines[i]) == "```"
                if isempty(openings)
                    # assuming lang is missing
                    push!(openings, i)
                else
                    # it is the end of code block
                    i_start = pop!(openings)
                    if isempty(openings)
                        code_lines = lines[i_start+1:i-1]
                        startswith(lines[i_start+1], "julia>") && continue # skip julia repl blocks
                        code = join(code_lines, "\n")
                        try
                            Meta.parseall(code)
                            push!(res, code)
                        catch e
                        end
                    else
                        # inner block, dropped
                    end
                end
            else
                push!(openings, i)
            end
        end
    end

    res
end

#####

using XML

struct EvalResult
    time::Float64
    tests::Int
    failures::Int
    errors::Int
end

struct HumanEvalResult
    task::HumanEvalTask
    basic_results::EvalResult
    eval_plus_results::Union{Nothing,EvalResult}
end

is_pass_basic_test(r::HumanEvalResult) = r.basic_results.failures == 0 && r.basic_results.errors == 0
is_pass_plus_test(r::HumanEvalResult) = r.basic_results.failures == 0 && r.basic_results.errors == 0 && (isnothing(r.eval_plus_results) || r.eval_plus_results.failures == 0 && r.eval_plus_results.errors == 0)

function walk(f, node)
    f(node)
    for c in children(node)
        walk(f, c)
    end
end

export extract_eval_result

function extract_eval_result(f)
    root = read(f, Node)
    basic_results = Dict()
    eval_plus_results = Dict()

    walk(root) do node
        if node.tag == "testcase"
            task_id = split(node["name"], "_")[1]
            time = parse(Float64, node["time"])
            tests = parse(Int, node["tests"])
            failures = parse(Int, node["failures"])
            errors = parse(Int, node["errors"])

            if occursin("HumanEvalPlus", node["name"])
                eval_plus_results[task_id] = EvalResult(time, tests, failures, errors)
            else
                basic_results[task_id] = EvalResult(time, tests, failures, errors)
            end
        end
    end

    [HumanEvalResult(t, basic_results[t.task_id], get(eval_plus_results, t.task_id, nothing)) for t in get_tasks()]
end

function extract_eval_result()
    results = Dict()
    for m in readdir(joinpath(@__DIR__, "..", "generations"))
        results_dir = joinpath(@__DIR__, "..", "generations", m, "0.0", "1", "results")
        result_files = readdir(results_dir)
        if length(result_files) > 0
            f_result = result_files |> sort |> last
            result = extract_eval_result(joinpath(results_dir, f_result))
            results[m] = result
        end
    end
    results
end