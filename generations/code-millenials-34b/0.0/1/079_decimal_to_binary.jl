"""
    decimal_to_binary(decimal::Int)::String

You will be given a number in decimal form and your task is to convert it to
binary format. The function should return a string, with each character
representing a binary number. Each character in the string will be '0' or '1'.

There will be an extra couple of characters 'db' at the beginning and at the end
of the string. The extra characters are there to help with the format.

# Examples

```jldoctest
julia> decimal_to_binary(15)
"db1111db"
```
"""


function decimal_to_binary(decimal::Int)::String
    binary = string(decimal, base=2)
    return "db" * binary * "db"
end

# Test cases
println(decimal_to_binary(15))  # Expected output: "db1111db"
println(decimal_to_binary(23))  # Expected output: "db10111db"
println(decimal_to_binary(1))   # Expected output: "db1db"
println(decimal_to_binary(0))   # Expected output: "db0db"
