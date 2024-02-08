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
    # Initialize an empty vector to hold the filtered strings
    filtered_xs = Vector{String}()

    # Iterate over the input vector of strings
    for x in xs
        # Check if the string starts with the given prefix
        if startswith(x, prefix)
            # If so, add it to the filtered vector
            push!(filtered_xs, x)
        end
    end

    # Return the filtered vector of strings
    return filtered_xs
end
