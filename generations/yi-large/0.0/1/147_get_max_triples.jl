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
    # Initialize the count of triples
    triple_count = 0

    # Generate the array a
    a = [i^2 - i + 1 for i in 1:n]

    # Iterate over all possible triples
    for i in 1:n-2
        for j in i+1:n-1
            for k in j+1:n
                # Check if the sum is a multiple of 3
                if (a[i] + a[j] + a[k]) % 3 == 0
                    triple_count += 1
                end
            end
        end
    end

    return triple_count
end

# Example usage
println(get_max_triples(5))  # Output: 1