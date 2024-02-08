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
    # Ensure both strings are of equal length
    if length(a) != length(b)
        throw(ArgumentError("Input strings must be of the same length"))
    end

    # Perform XOR operation on each pair of characters
    result = [xor(parse(Int, a[i]), parse(Int, b[i])) for i in 1:length(a)]

    # Convert the result array back to a string
    return join(string.(result))
end

# Example usage:
println(string_xor("010", "110"))  # Output should be "100"
