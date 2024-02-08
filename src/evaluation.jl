using ProgressMeter
using ReTestItems

export evaluation

function evaluation(model, temperature=0.0; is_force=true)
    src_parent_dir = joinpath(@__DIR__, "..", "generations", model, string(temperature))
    @showprogress desc = "[$model]Evaluating..." for s in readdir(src_parent_dir)
        generation_dir = joinpath(src_parent_dir, s)
        results_dir = joinpath(generation_dir, "results")
        !isdir(results_dir) && mkpath(results_dir)

        !isempty(readdir(results_dir)) && !is_force && continue

        withenv("RETESTITEMS_REPORT_LOCATION" => results_dir) do
            worker_init_expr = quote
                ENV["GENERATION_DIR"] = $generation_dir
            end
            try
                runtests(; report=true, worker_init_expr=worker_init_expr)
            catch
            end
        end
    end
end

#####

using HumanEval: HumanEvalTask, get_tasks, HumanEvalResult, is_pass_basic_test, is_pass_plus_test

function pass_at_1(res::Vector{HumanEvalResult}, is_basic_only=false)
    if is_basic_only
        sum(is_pass_basic_test, res) / length(res)
    else
        sum(is_pass_plus_test, res) / length(res)
    end
end

function pass_at_1(results::Vector{Vector{HumanEvalResult}}, is_basic_only=false)
    if is_basic_only
        sum(res -> sum(is_pass_basic_test, res) / length(res), results) / length(results)
    else
        sum(res -> sum(is_pass_plus_test, res) / length(res), results) / length(results)
    end
end

#####

using HumanEval

function evaluate()
    if !isnothing(get(ENV, "MODEL", nothing))
        evaluate(ENV["MODEL"])
    else
        for m in readdir(joinpath(@__DIR__, "..", "generations"))
            try
                evaluate(m)
            catch
            end
        end
        stats()
    end
end

function evaluate(model; kw...)
    gen_code(model; kw...)
    evaluation(model)
    stats()
end

function stats(model, temperature="0.0")
    results = Vector{HumanEvalResult}[]
    for seed in readdir(joinpath(@__DIR__, "..", "generations", model, temperature))
        results_dir = joinpath(@__DIR__, "..", "generations", model, temperature, seed, "results")
        result_files = readdir(results_dir)
        println(results_dir)
        f_result = result_files |> sort |> last
        result = extract_eval_result(joinpath(results_dir, f_result))
        push!(results, result)
    end

    basic = round(pass_at_1(results, true), digits=3)
    evalplus = round(pass_at_1(results, false), digits=3)
    (; model, temperature, evalplus, basic)
end

using DataFrames
using PrettyTables

function stats()
    df = DataFrame()

    generation_dir = joinpath(@__DIR__, "..", "generations")
    for m in readdir(generation_dir)
        for t in readdir(joinpath(generation_dir, m))
            s = stats(m, t)
            if !isnothing(s)
                push!(df, s)
            end
        end
    end
    sort!(df, [:evalplus], rev=true)
    PrettyTables.pretty_table(df, tf=PrettyTables.tf_markdown)
    df
end
