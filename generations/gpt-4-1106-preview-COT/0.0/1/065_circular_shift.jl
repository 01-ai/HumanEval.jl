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
    # Step 1: Convert the integer x to a string
    x_str = string(x)
    
    # Step 2: Determine the number of digits in x
    num_digits = length(x_str)
    
    # Step 3: If shift is greater than the number of digits, return reversed digits
    if shift >= num_digits
        return reverse(x_str)
    end
    
    # Step 4: Perform the circular shift
    effective_shift = shift % num_digits
    first_part = x_str[1:end-effective_shift]
    second_part = x_str[end-effective_shift+1:end]
    
    # Concatenate the second part in front of the first part
    result = second_part * first_part
    
    # Step 5: Return the result as a string
    return result
end
println(circular_shift(12, 1)) # Should print "21"
println(circular_shift(12, 2)) # Should print "12"
