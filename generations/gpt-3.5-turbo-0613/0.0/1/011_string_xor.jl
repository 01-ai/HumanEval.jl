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
    result = ""
    for i in 1:length(a)
        if a[i] == b[i]
            push!(result, '0')
        else
            push!(result, '1')
        end
    end
    return result
end
