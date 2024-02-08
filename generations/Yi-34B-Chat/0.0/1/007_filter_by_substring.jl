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
    # Initialize an empty vector to store the filtered strings
    filtered_strings = Vector{String}()
    
    # Iterate over the input strings
    for str in strings
        # Check if the current string contains the substring
        if occursin(substring, str)
            # If so, add it to the filtered list
            push!(filtered_strings, str)
        end
    end
    
    # Return the filtered list of strings
    return filtered_strings
end
