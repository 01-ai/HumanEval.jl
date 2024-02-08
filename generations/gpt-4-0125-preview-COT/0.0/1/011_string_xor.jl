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
    # Step 1: Input Validation (Assuming inputs are always valid for simplicity)
    if length(a) != length(b)
        error("Input strings must be of the same length")
    end

    # Step 2: XOR Operation
    result = String[]  # Initialize an empty array to store result characters
    for i in 1:length(a)
        # Convert characters to integers, perform XOR, and convert back to character
        xor_result = string(parse(Int, a[i]) ⊻ parse(Int, b[i]))
        push!(result, xor_result)  # Append the result to the result array
    end

    # Step 3: Return Result
    return join(result)  # Convert the array of characters back into a string
end
