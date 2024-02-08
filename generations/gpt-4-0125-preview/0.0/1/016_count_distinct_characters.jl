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
    # Convert the string to lowercase to make the function case-insensitive
    lowercase_s = lowercase(s)
    
    # Initialize an empty set to store unique characters
    unique_chars = Set{Char}()
    
    # Iterate through each character in the string
    for char in lowercase_s
        # Add the character to the set
        push!(unique_chars, char)
    end
    
    # Return the number of unique characters
    return length(unique_chars)
end
