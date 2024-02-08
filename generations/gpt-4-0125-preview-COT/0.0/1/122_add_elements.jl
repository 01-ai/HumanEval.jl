"""
    add_elements(xs::Vector{Int}, k::Int)::Int

Given a non-empty array of integers `xs` and an integer `k`, return the sum of
the elements with at most two digits from the first k elements of `xs`.

Constraints:

 1. 1 <= length(xs) <= 100
 2. 1 <= k <= length(xs)

# Examples

```jldoctest
julia> add_elements([111, 21, 3, 4000, 5, 6, 7, 8, 9], 4)  # sum of 21 + 3
24
```
"""
function add_elements(xs::Vector{Int}, k::Int)::Int
    # Step 1: Initialize the sum variable
    sum_of_elements = 0
    
    # Step 2: Iterate through the first k elements
    for i in 1:k
        # Step 3: Check if the current element has at most two digits
        if xs[i] >= -99 && xs[i] <= 99
            # Step 4: Add the element to the sum
            sum_of_elements += xs[i]
        end
    end
    
    # Step 5: Return the sum
    return sum_of_elements
end
