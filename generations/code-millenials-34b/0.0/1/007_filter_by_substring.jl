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
    filter(str -> occursin(substring, str), strings)
end

# Test cases
strings = String[]
@assert filter_by_substring(strings, "a") == String[]

strings = ["abc", "bacd", "cde", "array"]
@assert filter_by_substring(strings, "a") == ["abc", "bacd", "array"]

