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
    # Get the unit digits of a and b
    a_unit_digit = a % 10
    b_unit_digit = b % 10

    # If either a or b is 0, return 0
    if a_unit_digit == 0 || b_unit_digit == 0
        return 0
    end

    # Return the product of the unit digits
    return a_unit_digit * b_unit_digit
end
