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
    # Step 1: Check if the string is empty
    if isempty(s)
        return false
    end
    
    # Step 2: Trim trailing whitespace
    trimmed_s = rstrip(s)
    
    # Step 3: Check if the last character is an alphabetical character
    if isempty(trimmed_s) || !isletter(trimmed_s[end])
        return false
    end
    
    # Step 4: Ensure the character is not part of a word
    # It should be preceded by a space or be the first character
    if length(trimmed_s) == 1 || trimmed_s[end-1] == ' '
        return true
    else
        return false
    end
end

# Examples
println(check_if_last_char_is_a_letter("apple pie"))  # false
println(check_if_last_char_is_a_letter("apple pi e"))  # false
println(check_if_last_char_is_a_letter("apple pi e "))  # false
println(check_if_last_char_is_a_letter(""))  # false
