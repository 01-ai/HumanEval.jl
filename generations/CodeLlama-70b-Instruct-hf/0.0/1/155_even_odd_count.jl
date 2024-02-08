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
    # Convert the number to a string to access individual digits
    num_str = string(abs(num))

    # Initialize variables to count even and odd digits
    even_count = 0
    odd_count = 0

    # Iterate through each digit of the number
    for digit in num_str
        # Check if the digit is even
        if parse(Int, digit) % 2 == 0
            even_count += 1
        else
            odd_count += 1
        end
    end

    # Return a tuple with the even and odd digit counts
    return (even_count, odd_count)
end
