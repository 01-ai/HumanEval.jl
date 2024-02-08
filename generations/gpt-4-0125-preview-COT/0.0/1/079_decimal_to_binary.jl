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
    # Step 1: Initialize an empty string for the binary representation
    binary_str = ""
    
    # Special case for 0
    if decimal == 0
        return "db0db"
    end
    
    # Step 2: Convert decimal to binary
    while decimal > 0
        remainder = decimal % 2
        decimal = decimal ÷ 2  # Integer division
        binary_str = string(remainder) * binary_str  # Prepend the remainder
    end
    
    # Step 3: Add 'db' prefix and suffix
    formatted_str = "db" * binary_str * "db"
    
    # Step 4: Return the formatted string
    return formatted_str
end
