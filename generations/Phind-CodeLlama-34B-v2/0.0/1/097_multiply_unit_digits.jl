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
    # Get the last digit of a and b
    last_digit_a = a % 10
    last_digit_b = b % 10

    # Return the product of the last digits
    return last_digit_a * last_digit_b
end
