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
        abs_num = abs(num)
        if abs_num > 10
            digits = string(abs_num)
            first_digit = parse(Int, digits[1])
            last_digit = parse(Int, digits[end])
            
            if isodd(first_digit) && isodd(last_digit)
                count += 1
            end
        end
    end
    
    return count
end
println(specialFilter([15, -73, 14, -15]))  # Output: 1
println(specialFilter([33, -2, -3, 45, 21, 109]))  # Output: 2
