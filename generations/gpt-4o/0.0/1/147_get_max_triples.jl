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
    # Step 1: Generate the array a
    a = [i * i - i + 1 for i in 1:n]
    
    # Step 2: Initialize the count of valid triples
    count = 0
    
    # Step 3: Iterate through all possible triples (i, j, k) where i < j < k
    for i in 1:n-2
        for j in i+1:n-1
            for k in j+1:n
                # Step 4: Check if the sum of the triple is a multiple of 3
                if (a[i] + a[j] + a[k]) % 3 == 0
                    count += 1
                end
            end
        end
    end
    
    # Step 5: Return the count of valid triples
    return count
end

# Example usage
println(get_max_triples(5))  # Output should be 1
