"""
    same_chars(s0::String, s1::String)::Bool

Check if two words have the same characters.

# Examples

```jldoctest
julia> same_chars("eabcdzzzz", "dddzzzzzzzddeddabc")
true

julia> same_chars("abcd", "dddddddabc")
true

julia> same_chars("dddddddabc", "abcd")
true

julia> same_chars("eabcd", "dddddddabc")
false

julia> same_chars("abcd", "dddddddabce")
false

julia> same_chars("eabcdzzzz", "dddzzzzzzzddddabc")
false
```
"""
function same_chars(s0::String, s1::String)::Bool
    # Convert the strings to lowercase
    s0 = lowercase(s0)
    s1 = lowercase(s1)

    # Check if the lengths of the strings are different
    if length(s0) != length(s1)
        return false
    end

    # Sort the strings
    s0 = sort(s0)
    s1 = sort(s1)

    # Compare the sorted strings
    return s0 == s1
end
