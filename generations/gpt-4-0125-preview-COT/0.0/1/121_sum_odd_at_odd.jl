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
    # Step 1: Initialize sum variable
    sum = 0
    
    # Step 2: Iterate through the list with indices
    for (index, value) in enumerate(xs)
        # Step 3: Check for odd elements at odd positions
        if index % 2 != 0 && value % 2 != 0
            sum += value  # Add to sum if both conditions are met
        end
    end
    
    # Step 4: Return the sum
    return sum
end
