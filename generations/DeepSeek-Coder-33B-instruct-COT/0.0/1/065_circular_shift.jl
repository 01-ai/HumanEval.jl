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

    # If shift is greater than the length of the string, reverse the string
    if shift > length(str_x)
        return str_x[end:-1:1]
    end

    # If shift is less than the length of the string, perform a circular shift
    return str_x[end-shift+1:end] * str_x[1:end-shift]
end
