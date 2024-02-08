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
    # Check if the string is empty or the last character is a space
    if s == "" || s[end] == ' '
        return false
    end

    # Check if the last character is an alphabetical character
    if !isalpha(s[end])
        return false
    end

    # Check if the last character is not a part of a word
    if s[end - 1] != ' ' || s[end - 2] != ' '
        return true
    end

    # If the last character is a part of a word, return false
    return false
end
