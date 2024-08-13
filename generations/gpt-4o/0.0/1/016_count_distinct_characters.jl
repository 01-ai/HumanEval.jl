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
    # Use a Set to store distinct characters
    distinct_chars = Set{Char}()
    # Iterate over each character in the string and add it to the set
    for char in lower_s
        push!(distinct_chars, char)
    end
    # The number of distinct characters is the size of the set
    return length(distinct_chars)
end

# Examples
println(count_distinct_characters("xyzXYZ"))  # Output: 3
println(count_distinct_characters("Jerry"))   # Output: 4
