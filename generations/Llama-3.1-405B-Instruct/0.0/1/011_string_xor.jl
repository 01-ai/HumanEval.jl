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
    # Check if input strings have the same length
    if length(a) != length(b)
        throw(ArgumentError("Input strings must have the same length"))
    end

    # Initialize an empty string to store the result
    result = ""

    # Iterate over the characters in the input strings
    for (char_a, char_b) in zip(a, b)
        # Check if characters are valid (either '0' or '1')
        if char_a ∉ ['0', '1'] || char_b ∉ ['0', '1']
            throw(ArgumentError("Input strings must only contain '0's and '1's"))
        end

        # Perform binary XOR operation
        xor_result = (char_a == '1') ⊻ (char_b == '1')

        # Append the result to the output string
        result *= xor_result ? "1" : "0"
    end

    return result
end
