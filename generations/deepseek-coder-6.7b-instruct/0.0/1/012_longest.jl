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

    longest_string = xs[1]
    longest_length = length(longest_string)

    for str in xs
        if length(str) > longest_length
            longest_string = str
            longest_length = length(str)
        end
    end

    return longest_string
end

println(longest(String[]))
println(longest(["a", "b", "c"]))
println(longest(["a", "bb", "ccc"]))

