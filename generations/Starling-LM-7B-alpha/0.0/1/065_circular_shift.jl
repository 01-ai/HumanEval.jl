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

    # Get the length of the string
    len = length(str_x)

    # Check if the shift is greater than the number of digits
    if shift > len
        # Reverse the string if the shift is greater than the number of digits
        return reverse(str_x)
    end

    # Shift the digits to the right
    shifted_str = str_x[shift+1:end] * str_x[1:shift]

    # Return the shifted string
    return shifted_str
end
