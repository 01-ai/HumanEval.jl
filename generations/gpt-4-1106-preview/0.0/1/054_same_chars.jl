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
    # Convert strings to character arrays and sort them
    sorted_s0 = sort(collect(s0))
    sorted_s1 = sort(collect(s1))
    
    # Remove duplicates by converting to a set
    unique_s0 = Set(sorted_s0)
    unique_s1 = Set(sorted_s1)
    
    # Check if the sets of characters are equal
    return unique_s0 == unique_s1
end

# Examples
println(same_chars("eabcdzzzz", "dddzzzzzzzddeddabc")) # true
println(same_chars("abcd", "dddddddabc")) # true
println(same_chars("dddddddabc", "abcd")) # true
println(same_chars("eabcd", "dddddddabc")) # false
println(same_chars("abcd", "dddddddabce")) # false
println(same_chars("eabcdzzzz", "dddzzzzzzzddddabc")) # false
