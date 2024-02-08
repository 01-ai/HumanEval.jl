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
    # Check if the input strings are valid
    if !all(c -> c == '0' || c == '1', a) || !all(c -> c == '0' || c == '1', b)
        throw(ArgumentError("Input strings must consist only of '0's and '1's"))
    end

    # Convert the input strings to integers
    a_int = parse(Int, a, base=2)
    b_int = parse(Int, b, base=2)

    # Perform XOR operation on the integers
    result_int = a_int ⊻ b_int

    # Convert the result to a string and return it
    return string(result_int, base=2)
end
