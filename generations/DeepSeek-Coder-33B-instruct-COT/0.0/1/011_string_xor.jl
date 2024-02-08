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
    # Convert the strings to binary numbers
    a_bin = parse(Int, a, base=2)
    b_bin = parse(Int, b, base=2)

    # Perform the XOR operation
    xor_result = xor(a_bin, b_bin)

    # Convert the result back to a string
    return string(xor_result, base=2, pad=length(a))
end
