"""
    get_max_triples(n::Int)::Int

You are given a positive integer n. You have to create an integer array a of length n.
For each i (1 ≤ i ≤ n), the value of a[i] = i * i - i + 1.
Return the number of triples (a[i], a[j], a[k]) of a where i < j < k,
and a[i] + a[j] + a[k] is a multiple of 3.

# Examples

```jldoctest
julia> get_max_triples(5)  # a = [1, 3, 7, 13, 21] The only valid triple is (1, 7, 13).
1
```
"""

To implement the `get_max_triples` function, we will follow these steps:

1. Initialize an array `a` of length `n`.
2. Populate the array `a` with the formula `a[i] = i * i - i + 1` for each `i` from 1 to `n`.
3. Initialize a counter `triples_count` to 0 to keep track of the number of valid triples.
4. Iterate over all possible triples `(a[i], a[j], a[k])` where `i < j < k` using nested loops.
5. For each triple, check if the sum `a[i] + a[j] + a[k]` is a multiple of 3.
6. If the sum is a multiple of 3, increment the `triples_count`.
7. After checking all possible triples, return the `triples_count`.

Now, let's write the code for the `get_max_triples` function in Julia.
