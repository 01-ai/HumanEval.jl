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
    # Function to check if both the first and last digits of a number are odd
    function isFirstAndLastDigitOdd(n::Int)::Bool
        # Convert number to its absolute value to handle negative numbers
        n = abs(n)
        # Extract the last digit
        last_digit = n % 10
        # Extract the first digit by continuously dividing by 10 until n < 10
        while n >= 10
            n = div(n, 10)
        end
        first_digit = n
        # Check if both digits are odd
        return (first_digit % 2 != 0) && (last_digit % 2 != 0)
    end

    # Initialize a counter for numbers that satisfy the conditions
    count = 0

    # Iterate through each number in the input array
    for num in nums
        # Check if the number is greater than 10 and both first and last digits are odd
        if num > 10 && isFirstAndLastDigitOdd(num)
            count += 1
        end
    end

    return count
end
