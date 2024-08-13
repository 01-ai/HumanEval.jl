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
    lowercase_s = lowercase(s)
    
    # Create a set to store unique characters
    unique_chars = Set{Char}()
    
    # Iterate over each character in the lowercase string
    for char in lowercase_s
        # Add the character to the set, which automatically handles uniqueness
        push!(unique_chars, char)
    end
    
    # Return the length of the set, which represents the number of distinct characters
    return length(unique_chars)
end

# Examples
println(count_distinct_characters("xyzXYZ")) # Output: 3
println(count_distinct_characters("Jerry"))   # Output: 4