"""
    specialFilter(nums::Vector{Int})::Int

Write a function that takes an array of numbers as input and returns the number
of elements in the array that are greater than 10 and both first and last digits
of a number are odd (1, 3, 5, 7, 9).

# Example

```jldoctest
julia> specialFilter([15, -73, 14, -15])
1

julia> specialFilter([33, -2, -3, 45, 21, 109])
2
```
"""
function specialFilter(nums::Vector{Int})::Int
    # Helper function to check if a digit is odd
    function is_odd_digit(digit::Int)::Bool
        return digit in [1, 3, 5, 7, 9]
    end

    # Helper function to get the first digit of a number
    function first_digit(num::Int)::Int
        num = abs(num)
        while num >= 10
            num = div(num, 10)
        end
        return num
    end

    # Helper function to get the last digit of a number
    function last_digit(num::Int)::Int
        return abs(num) % 10
    end

    count = 0
    for num in nums
        if num > 10 && is_odd_digit(first_digit(num)) && is_odd_digit(last_digit(num))
            count += 1
        end
    end

    return count
end
