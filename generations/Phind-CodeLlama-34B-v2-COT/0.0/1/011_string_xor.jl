"""
    string_xor(a::String, b::String)::String

Input are two strings `a` and `b` consisting only of `1`s and `0`s. Perform
binary XOR on these inputs and return result also as a string.

# Examples

```jldoctest
julia> string_xor("010", "110")
"100"
```
"""
function string_xor(a::String, b::String)::String
    # Check if the lengths of the input strings are equal
    if length(a) != length(b)
        throw(ArgumentError("Input strings must be of the same length."))
    end

    # Initialize an empty string to store the XOR output
    result = ""

    # Iterate over the characters in the input strings simultaneously
    for (x, y) in zip(a, b)
        # Perform a binary XOR operation and append the result to `result`
        result *= string(x == y ? '0' : '1')
    end

    # Return the XOR output
    return result
end
