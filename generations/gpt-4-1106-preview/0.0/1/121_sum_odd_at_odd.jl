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
    sum = 0
    for (index, value) in enumerate(xs)
        if index % 2 != 0 && value % 2 != 0
            sum += value
        end
    end
    return sum
end

# Examples
println(sum_odd_at_odd([5, 8, 7, 1])) # Output: 12
println(sum_odd_at_odd([3, 3, 3, 3, 3])) # Output: 9
println(sum_odd_at_odd([30, 13, 24, 321])) # Output: 0
