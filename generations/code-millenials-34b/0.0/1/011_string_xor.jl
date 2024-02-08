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
    length(a) == length(b) || throw(ArgumentError("Strings must be of the same length"))
    res = ""
    for i in 1:length(a)
        res *= (a[i] == b[i]) ? '0' : '1'
    end
    return res
end

# Test cases
@assert string_xor("010", "110") == "100"
@assert string_xor("111", "000") == "111"
@assert_throws ArgumentError string_xor("1010", "0101")
