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
    # Convert the integer to a string to manipulate its digits
    digits = string(x)
    num_digits = length(digits)

    # If shift is greater than the number of digits, return the digits reversed
    if shift > num_digits
        return reverse(digits)
    end

    # Perform the circular shift
    shift = mod(shift, num_digits)  # Ensure shift is within the range of digits
    shifted_digits = digits[end-shift+1:end] * digits[1:end-shift]

    return shifted_digits
end

# Examples
println(circular_shift(12, 1))  # Output: "21"
println(circular_shift(12, 2))  # Output: "12"
