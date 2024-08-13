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
    # Ensure the strings have the same length
    if length(a) != length(b)
        throw(ArgumentError("Input strings must have the same length"))
    end

    # Perform XOR operation
    result = Char[]
    for (bit_a, bit_b) in zip(a, b)
        if bit_a ∉ ['0', '1'] || bit_b ∉ ['0', '1']
            throw(ArgumentError("Input strings must contain only '0' and '1'"))
        end
        push!(result, (bit_a == bit_b) ? '0' : '1')
    end

    return String(result)
end
