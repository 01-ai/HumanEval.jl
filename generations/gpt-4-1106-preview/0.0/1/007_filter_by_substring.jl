"""
    filter_by_substring(strings::Vector{String}, substring::AbstractString)::Vector{String}

Filter an input list of `strings` only for ones that contain given `substring`.

# Examples

```jldoctest
julia> filter_by_substring(String[], "a")
String[]

julia> filter_by_substring(["abc", "bacd", "cde", "array"], "a")
3-element Vector{String}:
 "abc"
 "bacd"
 "array"
```
"""
function filter_by_substring(strings::Vector{String}, substring::AbstractString)::Vector{String}
    # Use the `filter` function to select strings that contain the `substring`
    return filter(str -> occursin(substring, str), strings)
end

# Examples
println(filter_by_substring(String[], "a")) # Should print String[]
println(filter_by_substring(["abc", "bacd", "cde", "array"], "a")) # Should print ["abc", "bacd", "array"]
