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
    # Convert the string to lowercase to ignore case differences
    lower_s = lowercase(s)
    
    # Use a Set to store unique characters
    unique_chars = Set(lower_s)
    
    # Return the number of unique characters
    return length(unique_chars)
end
