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
    s = string(x)

    # Get the number of digits in the string
    n = length(s)

    # If shift is greater than the number of digits, reverse the string
    if shift > n
        return reverse(s)
    end

    # Otherwise, shift the digits right by shift
    return s[shift+1:n] * s[1:shift]
end
