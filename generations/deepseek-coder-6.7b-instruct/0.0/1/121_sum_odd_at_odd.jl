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
    return sum(x for (i, x) in enumerate(xs) if i % 2 == 0 && x % 2 == 1)
end

println(sum_odd_at_odd([5, 8, 7, 1]))  # 12
println(sum_odd_at_odd([3, 3, 3, 3, 3]))  # 9
println(sum_odd_at_odd([30, 13, 24, 321]))  # 0

