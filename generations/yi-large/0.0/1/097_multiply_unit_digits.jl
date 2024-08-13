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
    # Extract the unit digits from a and b
    unit_a = mod(a, 10)
    unit_b = mod(b, 10)

    # Multiply the unit digits
    result = unit_a * unit_b

    return result
end

# Test cases
println(multiply_unit_digits(148, 412)) # Expected: 16
println(multiply_unit_digits(19, 28))    # Expected: 72
println(multiply_unit_digits(2020, 1851)) # Expected: 0
println(multiply_unit_digits(14, -15))   # Expected: 20
