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
    # Step 1: Extract the integer part
    integer_part = floor(number)
    
    # Step 2: Calculate the decimal part
    decimal_part = number - integer_part
    
    # Step 3: Return the decimal part
    return decimal_part
end
