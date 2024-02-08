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
    # Step 1: Normalize the case
    normalized_string = lowercase(s)
    
    # Step 2: Create a set of characters
    char_set = Set{Char}()
    for char in normalized_string
        push!(char_set, char)
    end
    
    # Step 3 & 4: Count the distinct characters and return the count
    return length(char_set)
end
