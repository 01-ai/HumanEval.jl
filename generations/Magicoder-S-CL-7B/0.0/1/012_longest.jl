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
    if isempty(xs)
        return nothing
    else
        max_len = length(first(xs))
        longest_str = first(xs)
        for str in xs
            if length(str) > max_len
                max_len = length(str)
                longest_str = str
            end
        end
        return longest_str
    end
end
