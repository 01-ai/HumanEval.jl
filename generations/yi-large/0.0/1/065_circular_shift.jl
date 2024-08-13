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
    # Convert the integer to a string to work with the digits
    str_x = string(x)
    num_digits = length(str_x)
    
    # If shift is larger than the number of digits, reverse the digits
    if shift > num_digits
        return reverse(str_x)
    end
    
    # Perform the circular shift
    shift = shift % num_digits  # Ensure shift is within the range of digits
    new_str = str_x[num_digits-shift+1:end] * str_x[1:num_digits-shift]
    
    return new_str
end

# Test the function
println(circular_shift(12, 1))  # Expected: "21"
println(circular_shift(12, 2))  # Expected: "12"
