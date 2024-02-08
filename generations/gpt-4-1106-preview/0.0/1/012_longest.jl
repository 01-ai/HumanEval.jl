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
    # Return `nothing` if the input list is empty
    if isempty(xs)
        return nothing
    end

    # Initialize the longest string with the first element
    longest_str = xs[1]

    # Iterate through the list to find the longest string
    for str in xs
        if length(str) > length(longest_str)
            longest_str = str
        end
    end

    return longest_str
end

# Examples
println(longest(String[])) # Should print nothing
println(longest(["a", "b", "c"])) # Should print "a"
println(longest(["a", "bb", "ccc"])) # Should print "ccc"
