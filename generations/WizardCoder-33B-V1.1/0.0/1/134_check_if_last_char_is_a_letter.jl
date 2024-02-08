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

    # Check if last character is a letter
    if isletter(s[end])
        # Check if last character is part of a word
        if isempty(s) || s[end-1] == ' '
            return true
        end
    end

    return false
end

# Test cases
println(check_if_last_char_is_a_letter("apple pie")) # false
println(check_if_last_char_is_a_letter("apple pi e")) # false
println(check_if_last_char_is_a_letter("apple pi e ")) # false
println(check_if_last_char_is_a_letter("")) # false
println(check_if_last_char_is_a_letter("a")) # true
println(check_if_last_char_is_a_letter("a ")) # true
println(check_if_last_char_is_a_letter(" a")) # false
println(check_if_last_char_is_a_letter(" a ")) # true 
