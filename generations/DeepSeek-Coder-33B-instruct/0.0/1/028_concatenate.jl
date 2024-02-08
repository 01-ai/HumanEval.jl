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
    return join(xs)
end
println(concatenate(String[]))  # Output: ""
println(concatenate(["a", "b", "c"]))  # Output: "abc"
