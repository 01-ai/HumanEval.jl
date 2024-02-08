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
    # Step 1: Convert the string to lowercase
    lowercase_s = lowercase(s)
    
    # Step 2: Create a set to store distinct characters
    distinct_chars = Set{Char}()
    
    # Step 3: Iterate over each character in the lowercase string
    for char in lowercase_s
        # Step 4: Add each character to the set
        push!(distinct_chars, char)
    end
    
    # Step 5: The size of the set represents the number of distinct characters
    # Step 6: Return the size of the set
    return length(distinct_chars)
end
println(count_distinct_characters("xyzXYZ")) # Expected output: 3
println(count_distinct_characters("Jerry"))  # Expected output: 4
