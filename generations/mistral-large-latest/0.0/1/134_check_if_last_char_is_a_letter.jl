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
    # Check if the string is empty
    if isempty(s)
        return false
    end

    # Check if the last character is a letter and not part of a word
    last_char = s[end]
    is_letter = 'a' <= last_char <= 'z' || 'A' <= last_char <= 'Z'
    is_not_part_of_word = s[end-1] == ' ' || s[end-1] == '\t'

    return is_letter && is_not_part_of_word
end
