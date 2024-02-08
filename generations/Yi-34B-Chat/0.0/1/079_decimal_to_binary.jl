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
    # Initialize the binary string with the extra 'db' characters
    binary_str = "db"

    # Loop through the decimal number, converting each digit to binary
    while decimal > 0
        remainder = decimal % 2
        decimal //= 2
        binary_str = string(remainder) * binary_str
    end

    # Append the last 'db' to the string
    binary_str = binary_str * "db"

    # Return the formatted binary string
    return binary_str
end
