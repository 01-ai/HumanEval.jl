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
    # Convert the integer to a string to easily access and manipulate its digits
    str_x = string(x)
    
    # Calculate the effective shift, taking into account the case where shift > number of digits
    num_digits = length(str_x)
    effective_shift = shift % num_digits
    
    # If the effective shift is 0, return the original digits reversed
    if effective_shift == 0
        return reverse(str_x)
    end
    
    # Perform the circular shift
    shifted_str = str_x[(num_digits - effective_shift + 1):end] * str_x[1:(num_digits - effective_shift)]
    
    return shifted_str
end
