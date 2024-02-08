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
    # Trim any trailing spaces from the string
    trimmed_s = rstrip(s)
    
    # Check if the trimmed string is empty
    if isempty(trimmed_s)
        return false
    end
    
    # Get the last character of the trimmed string
    last_char = last(trimmed_s)
    
    # Check if the last character is an alphabetical character
    return isletter(last_char)
end
