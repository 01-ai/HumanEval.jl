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
    # Convert both strings to sets of characters
    set0 = Set(collect(s0))
    set1 = Set(collect(s1))
    
    # Check if the two sets are equal
    return set0 == set1
end
println(same_chars("eabcdzzzz", "dddzzzzzzzddeddabc"))  # true
println(same_chars("abcd", "dddddddabc"))  # true
println(same_chars("dddddddabc", "abcd"))  # true
println(same_chars("eabcd", "dddddddabc"))  # false
println(same_chars("abcd", "dddddddabce"))  # false
println(same_chars("eabcdzzzz", "dddzzzzzzzddddabc"))  # false
