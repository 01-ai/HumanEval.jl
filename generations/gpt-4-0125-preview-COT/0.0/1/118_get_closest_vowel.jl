"""
    get_closest_vowel(word::String)::String

You are given a word. Your task is to find the closest vowel that stands between
two consonants from the right side of the word (case sensitive).

Vowels in the beginning and ending doesn't count. Return empty string if you
didn't find any vowel met the above condition.

You may assume that the given string contains English letter only.

# Example

```jldoctest
julia> get_closest_vowel("yogurt")
"u"

julia> get_closest_vowel("FULL")
"U"

julia> get_closest_vowel("quick")
""

julia> get_closest_vowel("ab")
""
```
"""
function get_closest_vowel(word::String)::String
    # Step 1: Initialize variables
    vowels = Set(['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U'])
    closest_vowel = ""
    
    # Step 2: Iterate over the word from right to left
    for i in length(word):-1:2  # Skip the first and last character
        current_char = word[i]
        prev_char = word[i-1]
        next_char = i < length(word) ? word[i+1] : ' '  # Handle the edge case for the second last character
        
        # Step 3: Check for vowels between consonants
        if current_char in vowels && !(prev_char in vowels || next_char in vowels)
            closest_vowel = current_char
            break  # Found the closest vowel, exit the loop
        end
    end
    
    # Step 4: Return the result
    return closest_vowel
end
