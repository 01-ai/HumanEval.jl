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
function longest(xs::Vector{String})::Union{Nothing,String}
    isempty(xs) && return nothing

    maxlen = mapreduce(length, max, xs)
    for x in xs
        if length(x) == maxlen
            return x
        end
    end
end
