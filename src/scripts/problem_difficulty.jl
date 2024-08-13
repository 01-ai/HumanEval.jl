using HumanEval
using UnicodePlots

results = extract_eval_result()
named_passes = zip(
                   sum([[HumanEval.is_pass_plus_test(r) for r in xs] for xs in values(results)]),
                   nameof.(get_tasks()),
               ) |> collect |> sort
barplot([x[2] for x in named_passes], [x[1] for x in named_passes], title="Solved Count")

using Plots

named_passes = zip(sum([[HumanEval.is_pass_plus_test(r) for r in xs] for (n, xs) in results if !endswith(n, "COT")]), nameof.(get_tasks()),) |> collect
sorted_named_passes = sort(named_passes, rev=true)
counts = [c for (c, n) in sorted_named_passes]
problems = [n for (c, n) in sorted_named_passes]
bar(counts, legend=false, xticks=(1:5:length(problems), problems[1:5:length(problems)]), xrotation=-90, title="Number of LLMs solved each task", dpi=300)


filtered_results = Dict([m => xs for (m, xs) in pairs(results) if !endswith(m, "COT")])
sorted_pass_rate = zip([sum([HumanEval.is_pass_plus_test(r) for r in v]) / length(v) for v in values(filtered_results)], keys(filtered_results)) |> collect |> sort
bar([p for (p, n) in sorted_pass_rate], orientation=:h, legend=false, xlim=(0, 1), yticks=(1:length(sorted_pass_rate), [n for (p, n) in sorted_pass_rate]), title="Pass Rate@1 of Each Model", xaxis="Pass Rate@1", dpi=300)


#