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
    # Create an array a of length n
    a = zeros(Int, n)

    # Calculate the values of a
    for i = 1:n
        a[i] = i * i - i + 1
    end

    # Initialize the count of valid triples
    count = 0

    # Iterate through all possible triples
    for i = 1:n-2
        for j = i+1:n-1
            for k = j+1:n
                # Check if the sum of the triple is a multiple of 3
                if (a[i] + a[j] + a[k]) % 3 == 0
                    count += 1
                end
            end
        end
    end

    return count
end
