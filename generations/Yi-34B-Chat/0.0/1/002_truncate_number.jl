"""
    truncate_number(number::Float64)::Float64

Given a positive floating point number, it can be decomposed into integer part
(largest integer smaller than given number) and decimals (leftover part always
smaller than 1). Return the decimal part of the number.

# Examples

```jldoctest
julia> truncate_number(3.5)
0.5
```
"""
function truncate_number(number::Float64)::Float64
    # Decompose the number into integer and decimal parts
    integer_part = floor(number)
    decimal_part = number - integer_part
    
    # Ensure the decimal part is smaller than 1
    decimal_part = min(decimal_part, 1.0)
    
    # Return the decimal part
    return decimal_part
end
