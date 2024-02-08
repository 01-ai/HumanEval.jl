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

    # Iterate over the elements of the vector
    for (i, x) in enumerate(xs)
        # Check if the element is odd and in an odd position
        if x % 2 == 1 && i % 2 == 1
            # Add the element to the sum
            sum += x
        end
    end

    # Return the sum
    return sum
end
