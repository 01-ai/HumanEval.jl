"""
    multiply_unit_digits(a::Int, b::Int)::Int

Complete the function that takes two integers and returns the product of their
unit digits. Assume the input is always valid.

# Examples

```jldoctest
julia> multiply_unit_digits(148, 412)
16

julia> multiply_unit_digits(19, 28)
72

julia> multiply_unit_digits(2020, 1851)
0

julia> multiply_unit_digits(14, -15)
20
```
"""
function multiply_unit_digits(a::Int, b::Int)::Int
    # Step 1: Extract unit digits
    unit_digit_a = a % 10
    unit_digit_b = b % 10
    
    # Step 2: Multiply unit digits
    product = unit_digit_a * unit_digit_b
    
    # Step 3: Return result
    return product
end
