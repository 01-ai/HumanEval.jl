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
    # Filter the list of strings by checking if each string starts with the given prefix
    return filter(x -> startswith(x, prefix), xs)
end

# Examples to test the function
println(filter_by_prefix(String[], "a")) # Should return String[]
println(filter_by_prefix(["abc", "bcd", "cde", "array"], "a")) # Should return ["abc", "array"]
