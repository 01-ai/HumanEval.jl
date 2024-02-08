"""
    concatenate(xs::Vector{String})::String

Concatenate list of strings into a single string.

# Examples

```jldoctest
julia> concatenate(String[])
""

julia> concatenate(["a", "b", "c"])
"abc"
```
"""
function concatenate(xs::Vector{String})::String
    # 1. Initialize an empty string `result` to store the concatenated string.
    result = ""

    # 2. Iterate over each string `x` in the input vector `xs`.
    for x in xs
        # 3. Append `x` to `result`.
        result *= x
    end

    # 4. After the loop, return `result`.
    return result
end
