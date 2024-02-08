"""
    check_if_last_char_is_a_letter(s::String)::Bool

Create a function that returns `true` if the last character
of a given string is an alphabetical character and is not
a part of a word, and `false` otherwise.

Note: "word" is a group of characters separated by space.

# Examples

```jldoctest
julia> check_if_last_char_is_a_letter("apple pie")
false

julia> check_if_last_char_is_a_letter("apple pi e")
false

julia> check_if_last_char_is_a_letter("apple pi e ")
false

julia> check_if_last_char_is_a_letter("")
false
```
"""
function check_if_last_char_is_a_letter(s::String)::Bool
    if isempty(s)
        return false
    end
    
    last_char = s[end]
    if isletter(last_char)
        words = split(s)
        last_word = words[end]
        if last_word[end] == last_char
            return false
        end
        return true
    end
    
    return false
end
