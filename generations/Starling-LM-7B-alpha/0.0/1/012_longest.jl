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
    if length(xs) == 0
        return nothing
    else
        max_length = 0
        max_string = ""
        for x in xs
            if length(x) > max_length
                max_length = length(x)
                max_string = x
            end
        end
        return max_string
    end
end
