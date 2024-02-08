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
    distinct_chars = Set{Char}()
    for c in lowercase(s)
        push!(distinct_chars, c)
    end
    return length(distinct_chars)
end
@assert count_distinct_characters("xyzXYZ") == 3
@assert count_distinct_characters("Jerry") == 4
