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
    # Initialize an empty string to concatenate all strings
    str = ""

    # Iterate over the vector of strings and concatenate them
    for x in xs
        str *= x
    end

    # Return the concatenated string
    return str
end
