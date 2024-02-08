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
    return filter(x -> startswith(x, prefix), xs)
end

# Testing the function
println(filter_by_prefix(String[], "a"))
println(filter_by_prefix(["abc", "bcd", "cde", "array"], "a")) 
