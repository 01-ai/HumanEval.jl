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

    # Step 2: Trim the string to remove trailing spaces
    trimmed_s = rstrip(s)

    # Step 3: Check if the trimmed string is empty
    if isempty(trimmed_s)
        return false
    end

    # Step 4: Get the last character of the trimmed string
    last_char = last(trimmed_s)

    # Step 5 & 6: Check if the last character is an alphabetical character and return the result
    return isletter(last_char)
end
