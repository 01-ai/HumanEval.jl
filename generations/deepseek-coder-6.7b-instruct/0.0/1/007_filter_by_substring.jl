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
    return filter(s -> contains(s, substring), strings)
end
strings = ["abc", "bacd", "cde", "array"]
substring = "a"
filtered_strings = filter_by_substring(strings, substring)
println(filtered_strings)
3-element Vector{String}:
 "abc"
 "bacd"
 "array"
