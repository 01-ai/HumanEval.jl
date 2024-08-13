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
    # Generate the array a
    a = [i * i - i + 1 for i in 1:n]
    
    # Count the remainders when divided by 3
    remainder_count = zeros(Int, 3)
    for value in a
        remainder = value % 3
        remainder_count[remainder + 1] += 1
    end
    
    # Calculate the number of valid triples
    # We need to find combinations of (a[i], a[j], a[k]) such that their sum % 3 == 0
    # This can happen in the following scenarios:
    # 1. All three numbers have the same remainder (0,0,0), (1,1,1), or (2,2,2)
    # 2. One number from each remainder category (0,1,2)
    
    # Count triples of the same remainder
    triples = 0
    for count in remainder_count
        if count >= 3
            triples += count * (count - 1) * (count - 2) ÷ 6  # Combination nC3
        end
    end
    
    # Count triples with one from each remainder category
    if all(remainder_count .>= 1)
        triples += remainder_count[1] * remainder_count[2] * remainder_count[3]
    end
    
    return triples
end
