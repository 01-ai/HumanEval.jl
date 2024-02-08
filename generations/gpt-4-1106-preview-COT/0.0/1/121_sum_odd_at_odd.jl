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
    # Step 1: Initialize the sum variable
    sum = 0
    
    # Step 2: Iterate over the elements with their indices
    for (index, value) in enumerate(xs)
        # Step 3: Check if the index is odd (1-based) and the value is odd
        if index % 2 == 1 && value % 2 == 1
            # Step 4: Add the value to the sum
            sum += value
        end
    end
    
    # Step 5: Return the sum
    return sum
end
println(sum_odd_at_odd([5, 8, 7, 1])) # Should output 12
println(sum_odd_at_odd([3, 3, 3, 3, 3])) # Should output 9
println(sum_odd_at_odd([30, 13, 24, 321])) # Should output 0
