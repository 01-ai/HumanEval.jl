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
    # Create a dictionary for each string counting the occurrences of each character
    dict_s0 = Dict{Char, Int}()
    dict_s1 = Dict{Char, Int}()

    # Populate the dictionaries
    for c in s0
        dict_s0[c] = get(dict_s0, c, 0) + 1
    end

    for c in s1
        dict_s1[c] = get(dict_s1, c, 0) + 1
    end

    # Check if the dictionaries are equal
    return dict_s0 == dict_s1
end
