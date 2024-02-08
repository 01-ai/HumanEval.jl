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
    str_x = string(x)
    
    # Get the number of digits
    num_digits = length(str_x)
    
    # If shift is greater than or equal to the number of digits, return the digits reversed
    if shift >= num_digits
        return reverse(str_x)
    end
    
    # Otherwise, perform a circular shift of the digits
    return str_x[shift+1:end] * str_x[1:shift]
end
