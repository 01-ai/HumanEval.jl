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
    end
    
    longest_str = xs[1]
    max_length = length(longest_str)
    
    for s in xs
        if length(s) > max_length
            longest_str = s
            max_length = length(s)
        end
    end
    
    return longest_str
end
