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

    # Check if the last character is a letter
    if isletter(last_char)
        # Check if the last character is part of a word
        # by checking if the previous character is also a letter or not
        if length(s) > 1
            prev_char = s[end-1]
            if isletter(prev_char) || prev_char == ' '
                return false
            else
                return true
            end
        else
            return true
        end
    else
        return false
    end
end
