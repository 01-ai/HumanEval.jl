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
    if s == ""
        return false
    end
    
    last_char = s[end]
    if !isalpha(last_char)
        return false
    end
    
    # Check if the last character is not part of a word
    if length(s) > 1 && isalpha(s[end-1])
        return false
    end
    
    # Check if there's a space before the last character to ensure it's not part of a word
    if length(s) > 1 && s[end-1] != ' '
        return false
    end
    
    return true
end
