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
        throw(ArgumentError("Input strings must be of the same length"))
    end

    # Perform binary XOR on each character
    result = map(zip(a, b)) do (char_a, char_b)
        xor(parse(Int, char_a), parse(Int, char_b))
    end

    # Convert the result back to a string
    return join(string.(result))
end
