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

    # Check if the last character is a letter and not at the end of a word
    if isletter(last_char) && last_char != ' '
        # Check if the last character is not followed by a space
        if length(s) > 1 && s[end-1] != ' '
            # The last character is a letter and not at the end of a word
            return true
        end
    end

    return false
end

# Test the function
println(check_if_last_char_is_a_letter("apple pie"))   # false
println(check_if_last_char_is_a_letter("apple pi e"))   # false
println(check_if_last_char_is_a_letter("apple pi e "))   # false
println(check_if_last_char_is_a_letter(""))             # false
