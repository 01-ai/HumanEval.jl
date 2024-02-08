"""
    sum_odd_at_odd(xs::Vector{Int})::Int

Given a non-empty list of integers, return the sum of all of the odd elements
that are in odd positions.

# Examples

```jldoctest
julia> sum_odd_at_odd([5, 8, 7, 1])
12

julia> sum_odd_at_odd([3, 3, 3, 3, 3])
9

julia> sum_odd_at_odd([30, 13, 24, 321])
0
```
"""
function sum_odd_at_odd(xs::Vector{Int})::Int
    # Initialize the sum to 0
    sum = 0

    # Iterate through the vector
    for i in 1:2:length(xs)
        # Check if the element at the current index is odd
        if xs[i] % 2 == 1
            # If it is odd, add it to the sum
            sum += xs[i]
        end
    end

    # Return the sum
    return sum
end
