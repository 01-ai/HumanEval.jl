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
    # Convert the decimal number to a binary string
    binary_string = string(decimal, base=2)

    # Add the extra 'db' characters at the beginning and end of the string
    binary_string = "db" * binary_string * "db"

    return binary_string
end
