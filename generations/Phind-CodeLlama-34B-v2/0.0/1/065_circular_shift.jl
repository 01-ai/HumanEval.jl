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
    digits = string(x)
    if shift > length(digits)
        return reverse(digits)
    else
        return digits[end-shift+1:end] * digits[1:end-shift]
    end
end
