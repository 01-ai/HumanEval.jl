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
    # Convert the number to its absolute value and then to a string
    num_str = string(abs(num))
    
    # Initialize counters for even and odd digits
    even_count = 0
    odd_count = 0
    
    # Iterate through each character in the string
    for digit_char in num_str
        # Convert the character back to an integer
        digit = parse(Int, digit_char)
        
        # Check if the digit is even or odd and increment the respective counter
        if digit % 2 == 0
            even_count += 1
        else
            odd_count += 1
        end
    end
    
    # Return a tuple with the counts of even and odd digits
    return (even_count, odd_count)
end
