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

    # Perform XOR operation on each character and collect the results
    result = [(a[i] == '1' && b[i] == '0') || (a[i] == '0' && b[i] == '1') ? '1' : '0' for i in 1:length(a)]

    # Join the result array into a string and return
    return join(result)
end
