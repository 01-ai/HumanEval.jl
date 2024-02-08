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
    n = length(str_x)
    shift = shift % n
    if shift == 0
        return str_x
    elseif shift == n
        return reverse(str_x)
    else
        return string(reverse(str_x[1:end-shift]), reverse(str_x[end-shift+1:end]))
    end
end
