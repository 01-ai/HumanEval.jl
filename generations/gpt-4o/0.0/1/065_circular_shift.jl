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
    # Convert the integer to a string to manipulate the digits
    x_str = string(x)
    len = length(x_str)
    
    # If shift is greater than the number of digits, return the reversed string
    if shift > len
        return reverse(x_str)
    end
    
    # Calculate the effective shift
    effective_shift = shift % len
    
    # Perform the circular shift
    if effective_shift == 0
        return x_str
    else
        return x_str[end-effective_shift+1:end] * x_str[1:end-effective_shift]
    end
end

# Examples
println(circular_shift(12, 1))  # "21"
println(circular_shift(12, 2))  # "12"
