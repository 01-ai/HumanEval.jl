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
    # Convert the string to lowercase to ignore case
    lower_s = lowercase(s)

    # Initialize an empty Set to store the distinct characters
    distinct_chars = Set{Char}()

    # Iterate over each character in the string
    for char in lower_s
        # Add the character to the set (only if it's not already in the set)
        push!(distinct_chars, char)
    end

    # Return the number of distinct characters
    return length(distinct_chars)
end
