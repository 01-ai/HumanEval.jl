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
function get_max_triples(n::Int)::Int
    # Initialize counts for remainders when divided by 3
    counts = [0, 0, 0]
    # Initialize the result
    triples = 0

    # Calculate the remainder of each element when divided by 3 and update counts
    for i in 1:n
        idx = (i * i - i + 1) % 3
        counts[idx] += 1
    end

    # Calculate the number of triples
    # The number of triples can be calculated by choosing 3 from counts[0],
    # or choosing 1 from counts[0] and 1 from counts[1] and 1 from counts[2],
    # or choosing 3 from counts[1], or choosing 3 from counts[2]
    triples += binomial(counts[0], 3)
    triples += counts[0] * binomial(counts[1], 2)
    triples += counts[0] * binomial(counts[2], 2)
    triples += binomial(counts[1], 2) * counts[2]
    triples += binomial(counts[2], 2) * counts[1]

    return triples
end
