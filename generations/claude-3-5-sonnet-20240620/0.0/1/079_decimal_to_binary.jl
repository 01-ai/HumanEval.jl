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
    if decimal == 0
        return "db0db"
    end

    binary = ""
    num = abs(decimal)

    while num > 0
        binary = string(num % 2) * binary
        num = num ÷ 2
    end

    return "db" * binary * "db"
end
