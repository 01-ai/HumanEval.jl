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
    for num in xs
        digit_sum = sum_of_digits(num)
        if digit_sum > 0
            count += 1
        end
    end
    return count
end

function sum_of_digits(num::Int)::Int
    total = 0
    is_negative = num < 0
    num = abs(num)
    
    while num > 0
        digit = num % 10
        total += is_negative && total == 0 ? -digit : digit
        num ÷= 10
    end
    
    return total
end
