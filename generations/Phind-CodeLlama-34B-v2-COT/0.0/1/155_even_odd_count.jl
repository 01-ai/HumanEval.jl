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
    # Initialize counters
    even_count = 0
    odd_count = 0

    # Convert number to string
    num_str = string(abs(num))  # We use abs() to handle negative numbers

    # Iterate over each character in the string
    for char in num_str
        # Check if the digit is even or odd
        if char % 2 == 0
            even_count += 1
        else
            odd_count += 1
        end
    end

    # Return the tuple of counters
    return (even_count, odd_count)
end
