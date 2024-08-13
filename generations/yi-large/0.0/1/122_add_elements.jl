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
    sum_of_elements = 0

    # Loop through the first k elements of xs
    for i in 1:min(k, length(xs))
        # Check if the current element has at most two digits
        if xs[i] < 100
            # If so, add it to the sum
            sum_of_elements += xs[i]
        end
    end

    # Return the sum of the elements with at most two digits
    return sum_of_elements
end

# Example usage:
# julia> add_elements([111, 21, 3, 4000, 5, 6, 7, 8, 9], 4)  # sum of 21 + 3
# 24
