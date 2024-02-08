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
    # Check if the word ends with a vowel
    if isvowel(word[end])
        return ""
    end

    # Iterate from the end of the word to find the first vowel
    for i in length(word):-1:2
        if isvowel(word[i]) && !isvowel(word[i-1]) && !isvowel(word[i+1])
            return word[i]
        end
    end

    # If no vowel is found, return an empty string
    return ""
end

# Helper function to check if a character is a vowel
function isvowel(c::Char)::Bool
    return c == 'a' || c == 'e' || c == 'i' || c == 'o' || c == 'u'
end
