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
    # Initialize result with same length as the longer of the two strings
    result = ""
    max_length = max(length(a), length(b))
    for i in 1:max_length
        # If one of the strings is shorter, use 0 for the missing bit
        a_bit = a[i] == '1' ? 1 : 0
        b_bit = b[i] == '1' ? 1 : 0
        result_bit = a_bit ⊕ b_bit
        result *= result_bit == 1 ? '1' : '0'
    end
    return result
end
