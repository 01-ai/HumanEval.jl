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

    # Get the last character of the string
    last_char = s[end]

    # Check if the last character is an alphabetical character
    if isletter(last_char)
        # Check if the last character is not part of a word
        # This is done by checking if the last character is followed by a space or is at the end of the string
        if endswith(s, " $last_char") || endswith(s, last_char)
            return true
        else
            return false
        end
    else
        return false
    end
end
