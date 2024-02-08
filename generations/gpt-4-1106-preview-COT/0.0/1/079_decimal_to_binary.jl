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
    # Step 1: Check if the input is an integer (this is already ensured by the type annotation)
    
    # Step 2: Convert the decimal number to binary
    binary_str = string(decimal, base=2)
    
    # Step 3: Format the binary string
    formatted_binary_str = "db" * binary_str * "db"
    
    # Step 4: Return the formatted binary string
    return formatted_binary_str
end
println(decimal_to_binary(15))  # Should print "db1111db"
