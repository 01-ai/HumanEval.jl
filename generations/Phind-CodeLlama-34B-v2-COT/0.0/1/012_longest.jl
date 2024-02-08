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
    longest_string = nothing
    max_length = 0

    for s in xs
        length_s = length(s)
        if length_s > max_length
            longest_string = s
            max_length = length_s
        end
    end

    return longest_string
end
