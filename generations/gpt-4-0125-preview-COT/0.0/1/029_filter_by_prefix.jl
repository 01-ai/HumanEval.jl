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
    # Step 1: Initialize an empty vector for filtered strings
    filtered_strings = String[]

    # Step 2: Iterate through the input vector of strings
    for x in xs
        # Check if the current string starts with the given prefix
        if startswith(x, prefix)
            # Append the string to the filtered_strings vector
            push!(filtered_strings, x)
        end
    end

    # Step 3: Return the filtered vector
    return filtered_strings
end
