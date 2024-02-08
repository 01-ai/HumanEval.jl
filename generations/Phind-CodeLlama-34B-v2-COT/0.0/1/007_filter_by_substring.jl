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
    # 1. Initialize an empty vector `result` to store the filtered strings.
    result = String[]

    # 2. Iterate over each string `s` in the input vector `strings`.
    for s in strings
        # 3. Check if `substring` is a substring of `s` using the `occursin` function.
        if occursin(substring, s)
            # 4. If it is, push `s` to the `result` vector.
            push!(result, s)
        end
    end

    # 5. After the loop, return the `result` vector.
    return result
end
