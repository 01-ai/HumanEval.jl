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
    if length(a) != length(b)
        throw(ArgumentError("Input strings must have the same length."))
    end

    result = ""
    for (char_a, char_b) in zip(a, b)
        if char_a != '0' && char_a != '1' || char_b != '0' && char_b != '1'
            throw(ArgumentError("Input strings must consist only of '0's and '1's."))
        end

        bit_a = parse(Int, char_a)
        bit_b = parse(Int, char_b)
        xor_result = xor(bit_a, bit_b)
        result *= string(xor_result)
    end

    return result
end
