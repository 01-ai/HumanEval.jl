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
    # Initialize an empty vector to store the filtered strings
    result = String[]

    # Iterate over the input vector
    for x in xs
        # Check if the string starts with the given prefix
        if startswith(x, prefix)
            # If it does, push the string to the result vector
            push!(result, x)
        end
    end

    # Return the result vector
    return result
end
