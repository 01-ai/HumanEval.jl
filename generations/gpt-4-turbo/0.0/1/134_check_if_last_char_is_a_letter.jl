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
    
    # Find the last non-space character in the string
    last_char_index = findlast(c -> !isspace(c), s)
    
    # If there is no non-space character, return false
    if last_char_index === nothing
        return false
    end
    
    # Get the last non-space character
    last_char = s[last_char_index]
    
    # Check if the last character is a letter and not part of a word
    # It's not part of a word if it's the only character or followed by space
    if isletter(last_char) && (last_char_index == length(s) || isspace(s[last_char_index + 1]))
        return true
    else
        return false
    end
end