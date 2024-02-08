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
    # Step 1: Initialize an empty vector to store matching strings
    filtered_strings = String[]

    # Step 2: Iterate through each string in the input vector
    for string in strings
        # Check if the current string contains the specified substring
        if occursin(substring, string)
            # If it does, append it to the filtered_strings vector
            push!(filtered_strings, string)
        end
    end

    # Step 3: Return the filtered vector
    return filtered_strings
end
