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
    # If the string is empty, return false
    if isempty(s)
        return false
    end

    # Find the last non-space character
    last_char_index = findlast(!isspace, s)

    # If there are no non-space characters, return false
    if last_char_index === nothing
        return false
    end

    last_char = s[last_char_index]

    # Check if the last character is a letter
    if !isletter(last_char)
        return false
    end

    # If the last character is the only character or is preceded by a space, return true
    if last_char_index == 1 || isspace(s[last_char_index - 1])
        return true
    end

    return false
end
