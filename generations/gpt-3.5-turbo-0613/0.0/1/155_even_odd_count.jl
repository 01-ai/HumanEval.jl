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
    even_count = 0
    odd_count = 0
    
    # Convert the number to a string
    num_str = string(num)
    
    # Iterate over each character in the string
    for digit in num_str
        # Convert the character back to an integer
        digit_int = parse(Int, digit)
        
        # Check if the digit is even or odd
        if digit_int % 2 == 0
            even_count += 1
        else
            odd_count += 1
        end
    end
    
    return (even_count, odd_count)
end
