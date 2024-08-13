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
    # Convert the number to a string to easily iterate over its digits
    str_num = abs(num) |> string

    # Initialize counters for even and odd digits
    evens = 0
    odds = 0

    # Iterate over each character in the string (digit in the number)
    for digit in str_num
        # Convert the character back to an integer to check if it's even or odd
        int_digit = parse(Int, digit)
        if iseven(int_digit)
            evens += 1
        else
            odds += 1
        end
    end

    # Return the tuple with the counts of even and odd digits
    return (evens, odds)
end

# Test the function
println(even_odd_count(-12))  # should return (1, 1)
println(even_odd_count(123))  # should return (1, 2)
