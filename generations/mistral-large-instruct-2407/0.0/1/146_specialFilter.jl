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
    function is_odd_digit(digit::Int)::Bool
        return digit in [1, 3, 5, 7, 9]
    end

    function first_and_last_digits_odd(num::Int)::Bool
        num_str = string(abs(num))
        first_digit = parse(Int, num_str[1])
        last_digit = parse(Int, num_str[end])
        return is_odd_digit(first_digit) && is_odd_digit(last_digit)
    end

    count = 0
    for num in nums
        if num > 10 && first_and_last_digits_odd(num)
            count += 1
        end
    end

    return count
end

# Example usage
println(specialFilter([15, -73, 14, -15]))  # Output: 1
println(specialFilter([33, -2, -3, 45, 21, 109]))  # Output: 2