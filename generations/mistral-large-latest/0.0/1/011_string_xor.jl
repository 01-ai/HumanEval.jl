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
    @assert length(a) == length(b) "Inputs must have the same length"
    @assert all(x -> x in ('0', '1'), a) "Input a must consist only of '0's and '1's"
    @assert all(x -> x in ('0', '1'), b) "Input b must consist only of '0's and '1's"

    result = ""
    for (i, j) in zip(a, b)
        result *= Int(i) ⊻ Int(j)
    end
    return result
end
