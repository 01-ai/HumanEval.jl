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
    # Convert the integer to a string to work with its digits
    digits_str = string(x)
    len = length(digits_str)
    
    # If shift is greater than the number of digits, return the digits reversed
    if shift >= len
        return reverse(digits_str)
    end
    
    # Calculate the effective shift within the range of the number of digits
    effective_shift = shift % len
    
    # Perform the circular shift
    shifted_str = digits_str[end-effective_shift+1:end] * digits_str[1:end-effective_shift]
    
    return shifted_str
end
