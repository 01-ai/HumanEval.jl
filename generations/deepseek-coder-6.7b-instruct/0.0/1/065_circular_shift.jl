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
    digits_x = reverse(string(x))
    len_x = length(digits_x)

    if shift > len_x
        return digits_x
    else
        return string(reverse(digits_x[1+shift:len_x]), digits_x[1:shift])
    end
end
