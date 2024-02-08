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
    # Initialize the closest vowel to an empty string
    closest_vowel = ""

    # Iterate over the characters of the word from right to left
    for i in length(word):-1:1
        # Check if the current character is a vowel
        if word[i] in "aeiou"
            # If it is a vowel, check if it is between two consonants
            if i > 1 && i < length(word) && word[i-1] in "bcdfghjklmnpqrstvwxyz" && word[i+1] in "bcdfghjklmnpqrstvwxyz"
                # If it is, return the vowel
                return word[i]
            end
        end
    end

    # If no vowel was found, return an empty string
    return ""
end
