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
    function sum_of_digits(n::Int)::Int
        n < 0 ? sum_of_digits(-n, true) : sum_of_digits(n, false)
    end

    function sum_of_digits(n::Int, is_negative::Bool)::Int
        sum = 0
        while n > 0
            digit = n % 10
            sum += is_negative && sum == 0 ? -digit : digit
            n ÷= 10
        end
        sum
    end

    count = 0
    for x in xs
        if sum_of_digits(x) > 0
            count += 1
        end
    end
    count
end
