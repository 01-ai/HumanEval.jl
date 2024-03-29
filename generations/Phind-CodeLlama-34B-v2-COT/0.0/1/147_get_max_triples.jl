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
    # Step 1: Initialize an empty array a of length n
    a = zeros(Int, n)

    # Step 2: Fill the array a with the calculated values
    for i in 1:n
        a[i] = i * i - i + 1
    end

    # Step 3: Initialize a counter to store the number of triples
    count = 0

    # Step 4: Iterate over the array a with three nested loops to get all possible triples (a[i], a[j], a[k]) where i < j < k
    for i in 1:n-2
        for j in i+1:n-1
            for k in j+1:n
                # Step 5: Check if the sum a[i] + a[j] + a[k] is a multiple of 3
                if (a[i] + a[j] + a[k]) % 3 == 0
                    # Step 6: If it is, increment the counter count
                    count += 1
                end
            end
        end
    end

    # Step 7: Return the counter count
    return count
end
