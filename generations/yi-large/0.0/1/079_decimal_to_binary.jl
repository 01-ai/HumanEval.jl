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
    # Convert decimal to binary
    binary_str = string(bin(decimal))
    # Remove the leading "0b" from the binary string
    binary_str = binary_str[3:end]
    # Add the 'db' prefix and suffix
    return "db" * binary_str * "db"
end

# Example usage
println(decimal_to_binary(15))  # Output: db1111db
