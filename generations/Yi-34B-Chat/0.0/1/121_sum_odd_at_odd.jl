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
    # Initialize the sum to zero
    sum_odd_at_odd = 0

    # Loop through the list, adding odd elements in odd positions to the sum
    for i in 1:length(xs)
        if i % 2 == 1 && xs[i] % 2 == 1
            sum_odd_at_odd += xs[i]
        end
    end

    return sum_odd_at_odd
end