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
    # Convert the integer to a string to work with its digits
    digits_str = string(x)
    num_digits = length(digits_str)
    
    # If shift is greater than or equal to the number of digits, reverse the digits
    if shift >= num_digits
        return reverse(digits_str)
    end
    
    # Calculate the effective shift needed (in case shift is greater than num_digits)
    effective_shift = shift % num_digits
    
    # Perform the circular shift
    shifted_str = digits_str[end-effective_shift+1:end] * digits_str[1:end-effective_shift]
    
    return shifted_str
end
println(circular_shift(12, 1))  # Should output "21"
println(circular_shift(12, 2))  # Should output "12"
