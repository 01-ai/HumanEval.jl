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
    # Check if the string is empty or ends with a space
    if isempty(s) || s[end] == ' '
        return false
    end

    # Check if the last character is a letter and not part of a word
    return isletter(s[end]) && (length(s) == 1 || s[end-1] == ' ')
end

# Examples
println(check_if_last_char_is_a_letter("apple pie"))  # false
println(check_if_last_char_is_a_letter("apple pi e"))  # false
println(check_if_last_char_is_a_letter("apple pi e "))  # false
println(check_if_last_char_is_a_letter(""))  # false
