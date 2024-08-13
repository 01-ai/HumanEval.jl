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
    # Convert the integer to a string to manipulate digits
    digits_str = string(x)
    n = length(digits_str)
    
    # If shift is greater than or equal to the number of digits, reverse the digits
    if shift >= n
        return reverse(digits_str)
    end
    
    # Calculate the effective shift needed (modulus with n)
    effective_shift = shift % n
    
    # Perform the circular shift
    shifted_str = digits_str[(n-effective_shift+1):n] * digits_str[1:(n-effective_shift)]
    
    return shifted_str
end
