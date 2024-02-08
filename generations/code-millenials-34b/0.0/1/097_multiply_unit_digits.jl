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
    return (a % 10) * (b % 10)
end

println(multiply_unit_digits(148, 412)) # Expected output: 16
println(multiply_unit_digits(19, 28)) # Expected output: 72
println(multiply_unit_digits(2020, 1851)) # Expected output: 0
println(multiply_unit_digits(14, -15)) # Expected output: 20

