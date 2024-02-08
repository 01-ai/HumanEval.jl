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
    isempty(xs) && return 0

    function sum_of_digits(x)
        res = 0
        s = sign(x)
        x = abs(x)
        while true
            d, r = divrem(x, 10)
            if d == 0
                res += s * r
                break
            else
                res += r
                x = d
            end
        end
        res
    end
    sum(>(0) ∘ sum_of_digits, xs)
end
