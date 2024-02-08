"""
    same_chars(s0::String, s1::String)::Bool

Check if two words have the same characters.

# Examples

```jldoctest
julia> same_chars("eabcdzzzz", "dddzzzzzzzddeddabc")
true

julia> same_chars("abcd", "dddddddabc")
true

julia> same_chars("dddddddabc", "abcd")
true

julia> same_chars("eabcd", "dddddddabc")
false

julia> same_chars("abcd", "dddddddabce")
false

julia> same_chars("eabcdzzzz", "dddzzzzzzzddddabc")
false
```
"""
function same_chars(s0::String, s1::String)::Bool
    # Step 1: Initialize an empty dictionary to store the count of characters in the first string.
    char_count = Dict{Char, Int}()

    # Step 2: Iterate through each character in the first string and increment its count in the dictionary.
    for char in s0
        if haskey(char_count, char)
            char_count[char] += 1
        else
            char_count[char] = 1
        end
    end

    # Step 3: Iterate through each character in the second string.
    for char in s1
        # If the character is not in the dictionary, return false.
        if !haskey(char_count, char)
            return false
        else
            # If the character is in the dictionary, decrement its count. If the count becomes 0, remove the character from the dictionary.
            char_count[char] -= 1
            if char_count[char] == 0
                delete!(char_count, char)
            end
        end
    end

    # Step 4: After iterating through the second string, if the dictionary is not empty, return false. Otherwise, return true.
    return isempty(char_count)
end
