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
        error("Strings must be of the same length")
    end

    result = ""
    for i in 1:length(a)
        result *= string(parse(Int, string(a[i])) ⊻ parse(Int, string(b[i])))
    end

    return result
end
