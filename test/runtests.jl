using HumanEval
using ReTestItems
using Documenter

DocMeta.setdocmeta!(HumanEval, :DocTestSetup, :(using HumanEval; using HumanEval.HumanEvalTasks); recursive=true)
doctest(HumanEval)

generation_dir = joinpath(@__DIR__, "..", "src", "tasks")

worker_init_expr = quote
    ENV["GENERATION_DIR"] = $generation_dir
end
runtests(HumanEval, report=true, worker_init_expr=worker_init_expr)