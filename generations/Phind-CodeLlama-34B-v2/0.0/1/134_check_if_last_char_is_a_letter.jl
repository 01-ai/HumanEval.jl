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
    # Check if string is empty
    if isempty(s)
        return false
    end

    # Get the last character of the string
    last_char = s[end]

    # Check if the last character is a letter
    if isalpha(last_char)
        # Check if the second to last character is a space or doesn't exist (for single-character strings)
        if isempty(s[1:end-1]) || s[end-1] == ' '
            return true
        end
    end

    return false
end
