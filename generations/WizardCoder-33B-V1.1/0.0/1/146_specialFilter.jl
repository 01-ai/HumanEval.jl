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
    count = 0
    for num in nums
        if num > 10 && firstDigitIsOdd(num) && lastDigitIsOdd(num)
            count += 1
        end
    end
    return count
end

function firstDigitIsOdd(num::Int)::Bool
    return parse(Int, string(num)[1]) % 2 != 0
end

function lastDigitIsOdd(num::Int)::Bool
    return num % 2 != 0
end
