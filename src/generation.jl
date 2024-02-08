export gen_code

using ProgressMeter
using OpenAI

function gen_prompt(model, task::HumanEvalTask; chain_of_thought=false)
    cot = chain_of_thought ? " You need first to write a step-by-step outline and then write the code." : ""
    [
        Dict(
            "role" => "system",
            "content" => "You are an intelligent programming assistant to produce Julia algorithmic solutions. Please implement the following Julia function based on given doc string.$cot",
        ),
        Dict("role" => "user", "content" => task.prompt),
    ]
end

function gen_prompt(model::Val{Symbol("Yi-34B-Chat")}, task::HumanEvalTask; chain_of_thought=false)
    cot = chain_of_thought ? " You need first to write a step-by-step outline and then write the code." : ""
    [
        Dict("role" => "user", "content" => """You are an intelligent programming assistant to produce Julia algorithmic solutions. Please implement the following Julia function in the markdown format based on given doc string.$cot
        
        ```julia
        $(task.prompt)
        ```
        """),
    ]
end


function gen_reply(model, task::HumanEvalTask; chain_of_thought=false, kw...)
    provider = OpenAI.OpenAIProvider(
        api_key=ENV["OPENAI_API_KEY"],
        base_url=ENV["OPENAI_BASE_URL"],
    )
    prompt = gen_prompt(Val(Symbol(model)), task; chain_of_thought)
    r = create_chat(provider, model, prompt; kw...)
    [c[:message][:content] for c in r.response[:choices]]
end

"""
```
generations
    model_name
        temperature
            seed_1
                task_name.jl
                task_name.prompt.txt
                task_name.generation.txt
                ...
            seed_2
                ...
```
"""
function gen_code(model; temperature=0.0, n_samples=200, batch_size=10, chain_of_thought=false, kw...)
    if temperature == 0.0
        n_samples, batch_size = 1, 1
    end

    GEN_DIR = joinpath(
        @__DIR__,
        "..",
        "generations",
        chain_of_thought ? "$(model)-COT" : model,
        "$temperature",
    )
    for i = 1:n_samples
        mkpath(joinpath(GEN_DIR, "$i"))
    end

    # gen response
    @showprogress desc = "[$model]Generating..." for t in get_tasks()
        start = findfirst(
            i -> !isfile(joinpath(GEN_DIR, "$i", "$(nameof(t)).generation.txt")),
            1:n_samples,
        )
        isnothing(start) && continue

        for i = start:batch_size:n_samples
            reply =
                gen_reply(model, t; temperature, n=min(i + batch_size, n_samples + 1) - i, chain_of_thought, kw...)
            for (j, r) in enumerate(reply)
                open(
                    joinpath(GEN_DIR, "$(i+j-1)", "$(nameof(t)).generation.txt"),
                    "w",
                ) do io
                    write(io, r)
                end
            end
        end
    end

    # extract julia code
    for t in get_tasks()
        for i in 1:n_samples
            s = read(joinpath(GEN_DIR, "$i", "$(nameof(t)).generation.txt"), String)
            open(joinpath(GEN_DIR, "$i", "$(nameof(t)).jl"), "w") do io
                snippets = extract_julia_code_blocks(s)
                if !isempty(snippets)
                    println(io, t.prompt)
                    if !startswith(strip(snippets[1]), "function")
                        # we place extra line to avoid doc string error
                        println(io)
                    end
                    for s in snippets
                        println(io, s)
                    end
                end
            end
        end
    end
end
