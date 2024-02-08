using HumanEval
using UnicodePlots

results = extract_eval_result()
named_passes = zip(
                   sum([[HumanEval.is_pass_plus_test(r) for r in xs] for xs in values(results)]),
                   nameof.(get_tasks()),
               ) |> collect |> sort
barplot([x[2] for x in named_passes], [x[1] for x in named_passes], title="Solved Count")