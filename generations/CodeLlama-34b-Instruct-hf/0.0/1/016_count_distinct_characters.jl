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
    # Convert the string to lowercase
    s = lowercase(s)

    # Create a set to store the distinct characters
    distinct_chars = Set{Char}()

    # Iterate over the characters in the string
    for c in s
        # If the character is not already in the set, add it
        if !(c in distinct_chars)
            push!(distinct_chars, c)
        end
    end

    # Return the length of the set
    return length(distinct_chars)
end
