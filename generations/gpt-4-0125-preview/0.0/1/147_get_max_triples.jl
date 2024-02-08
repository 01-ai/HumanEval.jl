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
    # Step 1: Generate the array and count residues modulo 3
    counts = zeros(Int, 3)
    for i in 1:n
        # Calculate the value as per the given formula
        value = i * i - i + 1
        # Increment the count for the residue class of value modulo 3
        counts[value % 3 + 1] += 1
    end

    # Step 2: Calculate the number of valid triples
    # Case 1: All three numbers are multiples of 3
    triples = counts[1] * (counts[1] - 1) * (counts[1] - 2) ÷ 6
    # Case 2: One number from each residue class modulo 3
    triples += counts[1] * counts[2] * counts[3]

    return triples
end
