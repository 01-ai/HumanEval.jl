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
    # Separate the integer part and decimal part of the number
    integer_part, decimal_part = modf(number)
    
    # Return the decimal part of the number
    return decimal_part
end
using Test

@test truncate_number(3.5) ≈ 0.5
@test truncate_number(4.1) ≈ 0.1
@test truncate_number(5.9) ≈ 0.9
