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
    # Convert strings to character sets for comparison
    chars_s0 = Set(collect(s0))
    chars_s1 = Set(collect(s1))

    # Check if the sets of characters are the same
    return chars_s0 == chars_s1
end

# Test the function
println(same_chars("eabcdzzzz", "dddzzzzzzzddeddabc"))   # true
println(same_chars("abcd", "dddddddabc"))                # true
println(same_chars("dddddddabc", "abcd"))                # true
println(same_chars("eabcd", "dddddddabc"))               # false
println(same_chars("abcd", "dddddddabce"))               # false
println(same_chars("eabcdzzzz", "dddzzzzzzzddddabc"))    # false
