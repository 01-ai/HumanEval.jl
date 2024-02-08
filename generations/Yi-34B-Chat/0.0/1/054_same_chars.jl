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
    # Initialize a set to store characters from the first string
    char_set = Set(s0)
    
    # Check if all characters from the first string are present in the second string
    for c in s1
        if !(c in char_set)
            return false
        end
    end
    
    # If we reach this point, all characters from the first string are present in the second string
    return true
end
