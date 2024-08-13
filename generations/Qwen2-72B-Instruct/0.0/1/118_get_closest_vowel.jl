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
    vowels = "AEIOUaeiou"
    # Reverse the word to start checking from the right
    rev_word = reverse(word)
    # Loop through the reversed word
    for (i, char) in enumerate(rev_word)
        # Check if the character is a vowel and it's not at the beginning or end of the word
        if i > 1 && i < length(rev_word) && occursin(char, vowels)
            # Check if the characters before and after the vowel are consonants
            if !(occursin(rev_word[i-1], vowels)) && !(occursin(rev_word[i+1], vowels))
                # Return the vowel found
                return String(char)
            end
        end
    end
    # Return an empty string if no vowel meets the condition
    return ""
end
