"""
    filter_by_prefix(xs::Vector{String}, prefix::String)::Vector{String}

Filter an input list of strings only for ones that start with a given prefix.

# Examples

```jldoctest
julia> filter_by_prefix(String[], "a")
String[]

julia> filter_by_prefix(["abc", "bcd", "cde", "array"], "a")
2-element Vector{String}:
 "abc"
 "array"
```
"""
 function filter_by_prefix(xs::Vector{String}, prefix::String)::Vector{String}
    filtered_strings = String[]
    for str in xs
        if startswith(str, prefix)
            push!(filtered_strings, str)
        end
    end
    return filtered_strings
end
