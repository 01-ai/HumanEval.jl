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
        # Ignore numbers less than or equal to 10
        num <= 10 && continue

        # Convert number to string to check first and last digits
        num_str = string(abs(num))
        first_digit = parse(Int, num_str[1])
        last_digit = parse(Int, num_str[end])

        # Check if both first and last digits are odd
        if first_digit % 2 != 0 && last_digit % 2 != 0
            count += 1
        end
    end
    return count
end
