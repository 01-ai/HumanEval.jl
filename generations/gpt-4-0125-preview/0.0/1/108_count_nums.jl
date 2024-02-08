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
    # Function to calculate the sum of digits of a number, considering the sign
    function sum_of_digits(n::Int)::Int
        is_negative = n < 0
        sum = 0
        while n != 0
            digit = abs(n % 10)  # Get the last digit and make sure it's positive
            sum += is_negative ? -digit : digit  # Subtract if the number is negative
            n ÷= 10  # Remove the last digit
        end
        return sum
    end

    # Count numbers with a sum of digits greater than 0
    count = 0
    for num in xs
        if sum_of_digits(num) > 0
            count += 1
        end
    end

    return count
end
