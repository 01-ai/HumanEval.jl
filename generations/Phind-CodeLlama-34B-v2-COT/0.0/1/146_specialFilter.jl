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
function isSpecial(num::Int)::Bool
    str_num = string(abs(num))  # Convert the number to a string
    return isodd(parse(Int, str_num[1])) && isodd(parse(Int, str_num[end]))
end

function specialFilter(nums::Vector{Int})::Int
    count = 0
    for num in nums
        if num > 10 && isSpecial(num)
            count += 1
        end
    end
    return count
end
