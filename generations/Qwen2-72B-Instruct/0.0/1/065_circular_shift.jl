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
    str_x = string(x)
    len = length(str_x)
    if shift >= len
        return reverse(str_x)
    else
        return str_x[end-shift+1:end]*str_x[1:end-shift]
    end
end
