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
    # Convert the string to lower case
    s = lowercase(s)

    # Create a set to store distinct characters
    distinct_chars = Set{Char}()

    # Iterate over each character in the string
    for char in s
        # Add the character to the set
        push!(distinct_chars, char)
    end

    # Return the number of elements in the set
    return length(distinct_chars)
end
