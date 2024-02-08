"""
    count_nums(xs::Vector{Int})::Int

Write a function `count_nums` which takes an array of integers and returns the
number of elements which has a sum of digits > 0. If a number is negative, then
its first signed digit will be negative: e.g. -123 has signed digits -1, 2, and
3.

# Examples

```jldoctest
julia> count_nums(Int[])
0

julia> count_nums([-1, 11, -11])
1

julia> count_nums([1, 1, 2])
3
```
"""
function count_nums(xs::Vector{Int})::Int
    count = 0
    for x in xs
        if sum(digits(abs(x))) > 0
            count += 1
        end
    end
    return count
end
