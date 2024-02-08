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
    return join(xs, "")
end

# Test cases
println(concatenate(String[]))  # ""
println(concatenate(["a", "b", "c"]))  # "abc"

