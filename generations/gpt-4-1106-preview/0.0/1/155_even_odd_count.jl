"""
    even_odd_count(num::Int)::Tuple{Int, Int}

Given an integer, return a tuple that has the number of even and odd digits
respectively.

# Examples

```jldoctest
julia> even_odd_count(-12)
(1, 1)

julia> even_odd_count(123)
(1, 2)
```
"""
function even_odd_count(num::Int)::Tuple{Int, Int}
    # Initialize counters for even and odd digits
    even_count = 0
    odd_count = 0

    # Work with the absolute value of the number to handle negative numbers
    num = abs(num)

    # Loop through each digit of the number
    while num > 0
        digit = num % 10  # Get the last digit
        if digit % 2 == 0
            even_count += 1  # Increment even counter if digit is even
        else
            odd_count += 1   # Increment odd counter if digit is odd
        end
        num = num ÷ 10  # Remove the last digit
    end

    return (even_count, odd_count)
end
println(even_odd_count(-12))  # Output should be (1, 1)
println(even_odd_count(123))  # Output should be (1, 2)
