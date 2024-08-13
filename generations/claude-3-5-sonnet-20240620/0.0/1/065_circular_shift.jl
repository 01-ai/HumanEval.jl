"""
    circular_shift(x::Int, shift::Int)::String

Circular shift the digits of the integer x, shift the digits right by `shift` and
return the result as a string. If `shift` > number of digits, return digits
reversed.

# Examples

```jldoctest
julia> circular_shift(12, 1)
"21"

julia> circular_shift(12, 2)
"12"
```
"""
function circular_shift(x::Int, shift::Int)::String
    # Convert the integer to a string
    digits = string(abs(x))
    n = length(digits)
    
    # Handle negative numbers
    sign_char = x < 0 ? "-" : ""
    
    # If shift is greater than or equal to the number of digits, reverse the digits
    if shift >= n
        return sign_char * reverse(digits)
    end
    
    # Perform circular shift
    shift = shift % n  # Normalize shift to be within 0 to n-1
    shifted = digits[end-shift+1:end] * digits[1:end-shift]
    
    return sign_char * shifted
end
