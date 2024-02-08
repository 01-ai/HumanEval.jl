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
    # Step 1: Convert the integer to a string
    x_str = string(x)
    
    # Calculate the number of digits
    num_digits = length(x_str)
    
    # Step 2: Calculate effective shift
    effective_shift = shift % num_digits
    
    # Step 3: Handle special case
    if effective_shift == 0
        if shift == num_digits
            return x_str
        else
            return reverse(x_str)
        end
    end
    
    # Step 4: Perform circular shift
    # Split the string based on the effective shift
    part1 = x_str[end-effective_shift+1:end]
    part2 = x_str[1:end-effective_shift]
    
    # Combine the parts to get the shifted string
    shifted_str = part1 * part2
    
    # Step 5: Return the result
    return shifted_str
end
