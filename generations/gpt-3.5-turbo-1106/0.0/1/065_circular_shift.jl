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
    x_str = string(x)
    n = length(x_str)
    shift = shift % n
    if shift == 0
        return x_str
    elseif shift == n
        return reverse(x_str)
    else
        return x_str[n-shift+1:end]*x_str[1:n-shift]
    end
end
