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
    return abs(a % 10) * abs(b % 10)
end
println(multiply_unit_digits(148, 412))  # Output: 16
println(multiply_unit_digits(19, 28))  # Output: 72
println(multiply_unit_digits(2020, 1851))  # Output: 0
println(multiply_unit_digits(14, -15))  # Output: 20
