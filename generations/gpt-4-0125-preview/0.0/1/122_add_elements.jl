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
    # Initialize the sum to 0
    sum = 0
    
    # Iterate through the first k elements of xs
    for i in 1:k
        # Check if the current element has at most two digits
        if xs[i] >= -99 && xs[i] <= 99
            # Add the element to the sum
            sum += xs[i]
        end
    end
    
    # Return the total sum
    return sum
end
