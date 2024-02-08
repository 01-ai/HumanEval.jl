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
    # Step 1: Check if strings are of the same length
    if length(a) != length(b)
        error("Input strings must be of the same length")
    end

    # Step 2: Initialize the result string
    result = ""

    # Step 3: Iterate over the characters of both strings
    for i in 1:length(a)
        # Step 4: Perform XOR operation and append to result
        if a[i] == b[i]
            result *= '0'
        else
            result *= '1'
        end
    end

    # Step 5: Return the result
    return result
end
