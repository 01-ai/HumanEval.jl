"""
    count_distinct_characters(s::String)::Int

Given a string, find out how many distinct characters (regardless of case) does
it consist of.

# Examples

```jldoctest
julia> count_distinct_characters("xyzXYZ")
3

julia> count_distinct_characters("Jerry")
4
```
"""
 function count_distinct_characters(s::String)::Int
    distinct_chars = Set()
    for c in s
        if !haskey(distinct_chars, lowercase(c))
            push!(distinct_chars, lowercase(c))
        end
    end
    return length(distinct_chars)
end
