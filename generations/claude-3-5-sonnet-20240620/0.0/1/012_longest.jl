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
        return reduce((x, y) -> length(x) >= length(y) ? x : y, xs)
    end
end
println(longest(String[]))  # Output: nothing
println(longest(["a", "b", "c"]))  # Output: a
println(longest(["a", "bb", "ccc"]))  # Output: ccc
