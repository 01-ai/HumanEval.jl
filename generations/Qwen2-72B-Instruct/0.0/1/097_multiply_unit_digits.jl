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
    # Extract the unit digit of each number by taking the modulus by 10
    unit_digit_a = abs(a) % 10
    unit_digit_b = abs(b) % 10

    # Multiply the unit digits
    return unit_digit_a * unit_digit_b
end
