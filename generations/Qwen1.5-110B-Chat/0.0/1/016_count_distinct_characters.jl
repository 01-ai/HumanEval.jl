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
    # Convert the string to lowercase to ignore case sensitivity
    s_lower = lowercase(s)
    
    # Create an empty set to store distinct characters
    distinct_chars = Set{Char}()
    
    # Iterate over each character in the string
    for char in s_lower
        # Add the character to the set. Duplicates are automatically ignored in a set.
        push!(distinct_chars, char)
    end
    
    # The size of the set gives the count of distinct characters
    return length(distinct_chars)
end
