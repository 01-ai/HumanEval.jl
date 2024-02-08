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

    # Step 2 and 3: Initialize variables for the longest string and its length
    longest_str = xs[1]
    max_length = length(longest_str)

    # Step 4: Iterate over the strings in the vector
    for str in xs[2:end]
        # Step 5: Check if the current string is longer than the longest found so far
        if length(str) > max_length
            # Step 6: Update the longest string and its length
            longest_str = str
            max_length = length(str)
        end
    end

    # Step 7: Return the longest string
    return longest_str
end
