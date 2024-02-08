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
    # Convert the decimal number to an array of its digits
    digits_array = digits(decimal)

    # Map each digit to its binary representation and join them together
    binary_string = join(map(x -> string(x, base = 2, pad = 4), digits_array))

    # Add "db" at the beginning and end of the string
    result = "db" * binary_string * "db"

    return result
end
