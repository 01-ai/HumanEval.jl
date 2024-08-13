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
    for i in 1:2:length(xs)  # Iterate over odd indices (1-based)
        if isodd(xs[i])  # Check if the element at the odd index is odd
            sum += xs[i]
        end
    end
    return sum
end

# Examples
println(sum_odd_at_odd([5, 8, 7, 1]))  # 12
println(sum_odd_at_odd([3, 3, 3, 3, 3]))  # 9
println(sum_odd_at_odd([30, 13, 24, 321]))  # 0
