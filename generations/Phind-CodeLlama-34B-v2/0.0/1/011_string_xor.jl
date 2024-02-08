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
    # Check if both strings have the same length
    if length(a) != length(b)
        throw(ArgumentError("Input strings must have the same length."))
    end

    # Perform XOR operation on each character and join the results
    return join([a[i] == b[i] ? '0' : '1' for i in 1:length(a)])
end
