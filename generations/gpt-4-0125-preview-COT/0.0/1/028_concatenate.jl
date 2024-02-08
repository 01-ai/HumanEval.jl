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
    # Step 1: Initialize an empty string for the result
    result = ""
    
    # Step 2 & 3: Iterate through the list and concatenate each string
    for x in xs
        result *= x  # This appends x to the result string
    end
    
    # Step 4: Return the concatenated string
    return result
end
