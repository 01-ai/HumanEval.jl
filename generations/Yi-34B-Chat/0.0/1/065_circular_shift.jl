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
    # Get the digits of the integer x as a string
    digits = string(x)
    
    # If shift is greater than the length of the digits,
    # return the digits reversed
    if shift > length(digits)
        return reverse(digits)
    end
    
    # Create an array to hold the shifted digits
    shifted_digits = Array{Char, 1}(undef, length(digits))
    
    # Loop over the digits and shift them to the right
    for i in 1:length(digits)
        # If the current position is greater than the shift,
        # add the digit to the end of the array
        if i > shift
            shifted_digits[end] = digits[i]
        else
            # Otherwise, add the digit to the beginning of the array
            shifted_digits[1] = digits[i]
            # Shift the rest of the array one position to the right
            for j in 2:length(shifted_digits)
                shifted_digits[j] = shifted_digits[j-1]
            end
        end
    end
    
    # Join the array of characters back into a string
    return join(shifted_digits)
end
