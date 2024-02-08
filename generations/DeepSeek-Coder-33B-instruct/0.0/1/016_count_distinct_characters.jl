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
    return length(Set(lowercase(s)))
end
println(count_distinct_characters("xyzXYZ"))  # Output: 3
println(count_distinct_characters("Jerry"))  # Output: 4
