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
    # Convert the string to lowercase to make it case-insensitive
    s_lower = lowercase(s)
    
    # Use a Set to count unique characters
    unique_chars = Set(s_lower)
    
    # Return the count of unique characters
    return length(unique_chars)
end
