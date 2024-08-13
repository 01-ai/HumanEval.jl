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
    # Convert the decimal number to binary string
    binary_str = string(bin(decimal))
    
    # Format the string with 'db' at the beginning and end
    formatted_str = "db" * binary_str * "db"
    
    return formatted_str
end
println(decimal_to_binary(15))  # Output should be "db1111db"