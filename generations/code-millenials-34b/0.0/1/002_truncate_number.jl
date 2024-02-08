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
    return number - trunc(number)
end

# Test the function
@test truncate_number(3.5) == 0.5
@test truncate_number(1.2) == 0.2
@test truncate_number(2.7) == 0.7
@test truncate_number(0.1) == 0.1
@test truncate_number(1.0) == 0.0
