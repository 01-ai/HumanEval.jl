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
    n = length(digits)
    if shift >= n
        return reverse(digits)
    else
        return digits[n-shift+1:n] * digits[1:n-shift]
    end
end

# Test cases
println(circular_shift(12, 1))  # Expected output: "21"
println(circular_shift(12, 2))  # Expected output: "12"
println(circular_shift(1234, 3))  # Expected output: "4321"
println(circular_shift(1234, 10))  # Expected output: "4321"
println(circular_shift(1234, 0))  # Expected output: "1234"
