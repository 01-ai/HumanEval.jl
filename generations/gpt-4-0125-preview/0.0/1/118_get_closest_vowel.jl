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
    vowels = Set(['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U'])
    length_word = length(word)
    
    # Start from the second last character and go till the second character
    for i in (length_word-1):-1:2
        current_char = word[i]
        # Check if the current character is a vowel and surrounded by consonants
        if current_char in vowels && !(word[i-1] in vowels) && !(word[i+1] in vowels)
            return string(current_char)
        end
    end
    
    return ""
end
