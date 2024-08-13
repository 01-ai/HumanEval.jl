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
    # Create dictionaries to count the occurrences of each character in both strings
    count0 = Dict{Char, Int}()
    count1 = Dict{Char, Int}()
    
    # Count characters in s0
    for char in s0
        if haskey(count0, char)
            count0[char] += 1
        else
            count0[char] = 1
        end
    end
    
    # Count characters in s1
    for char in s1
        if haskey(count1, char)
            count1[char] += 1
        else
            count1[char] = 1
        end
    end
    
    # Check if both dictionaries have the same keys and values
    return count0 == count1
end
