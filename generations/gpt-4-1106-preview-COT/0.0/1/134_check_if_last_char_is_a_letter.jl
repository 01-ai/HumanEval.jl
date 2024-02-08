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
    trimmed_s = strip(s)

    # Step 3: Check if the last character is a letter
    if !isempty(trimmed_s) && isletter(last(trimmed_s))
        # Step 4: Check if the character before the last is a space or if it's the only character
        if length(trimmed_s) == 1 || isspace(trimmed_s[end-1])
            return true
        end
    end

    # Step 5: Return false if conditions are not met
    return false
end
println(check_if_last_char_is_a_letter("apple pie")) # Expected: false
println(check_if_last_char_is_a_letter("apple pi e")) # Expected: false
println(check_if_last_char_is_a_letter("apple pi e ")) # Expected: false
println(check_if_last_char_is_a_letter("")) # Expected: false
