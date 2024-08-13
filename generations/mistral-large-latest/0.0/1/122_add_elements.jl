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
    # Check if the array is non-empty and k is within the constraints
    if isempty(xs) || k < 1 || k > length(xs)
        throw(ArgumentError("Invalid input: k must be between 1 and length(xs)"))
    end

    # Initialize the sum
    sum = 0

    # Iterate over the first k elements
    for i in 1:k
        # Check if the number has at most two digits
        if log10(abs(xs[i])) + 1 <= 2
            # Add the number to the sum
            sum += xs[i]
        end
    end

    # Return the sum
    return sum
end
