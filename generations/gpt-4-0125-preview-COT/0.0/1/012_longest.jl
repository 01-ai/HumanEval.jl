"""
    longest(xs::Vector{String})::Union{Nothing, String}

Out of list of strings, return the longest one. Return the first one in case of
multiple strings of the same length. Return `nothing` in case the input list is
empty.

# Examples

```jldoctest
julia> longest(String[])

julia> longest(["a", "b", "c"])
"a"

julia> longest(["a", "bb", "ccc"])
"ccc"
```
"""
function longest(xs::Vector{String})::Union{Nothing, String}
    # Step 1: Check if the input vector is empty
    if isempty(xs)
        return nothing
    end

    # Step 2: Initialize variables for tracking
    longest_str = xs[1]  # Assume the first string is the longest initially
    max_length = length(xs[1])

    # Step 3: Iterate through the input vector
    for str in xs
        if length(str) > max_length
            longest_str = str
            max_length = length(str)
        end
    end

    # Step 4: Return the longest string
    return longest_str
end
