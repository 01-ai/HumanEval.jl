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
    # Initialize a counter for distinct characters
    distinct_char_count = 0

    # Loop through each character in the string
    for c in s
        # If the character is not in the set of distinct characters yet,
        # increment the counter and add the character to the set
        if !(c in keys(distinct_characters))
            distinct_char_count += 1
            distinct_characters[c] = true
        end
    end

    return distinct_char_count
end
