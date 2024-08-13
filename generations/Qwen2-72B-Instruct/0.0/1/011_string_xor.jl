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
    # Convert strings to arrays of integers for bitwise operations
    arr_a = [parse(Int, digit) for digit in a]
    arr_b = [parse(Int, digit) for digit in b]

    # Perform bitwise XOR operation
    xor_result = arr_a .⊻ arr_b

    # Convert the result back to a string
    return join(string.(xor_result))
end
