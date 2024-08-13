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
    # Ensure both strings are of the same length
    if length(a) != length(b)
        throw(ArgumentError("Input strings must be of the same length."))
    end

    # Initialize result string
    result = ""

    # Perform XOR operation on each pair of characters
    for (char_a, char_b) in zip(a, b)
        # Convert characters to integers (0 or 1)
        int_a = parse(Int, char_a)
        int_b = parse(Int, char_b)

        # Perform XOR and append the result as a character to the result string
        result *= string(int_a ⊻ int_b)
    end

    return result
end

# Example usage
# julia> string_xor("010", "110")
# "100"