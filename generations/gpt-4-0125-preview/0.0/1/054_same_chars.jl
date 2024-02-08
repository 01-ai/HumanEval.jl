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
    # Convert strings to sets of characters
    set_s0 = Set(s0)
    set_s1 = Set(s1)
    
    # Compare the sets for equality
    return set_s0 == set_s1
end
