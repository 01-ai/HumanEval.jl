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
    vowels = ["a", "e", "i", "o", "u"]
    word_length = length(word)

    for i in 2:word_length-1
        if 'a' <= word[i] <= 'z' && !in(word[i], vowels)
            if 'a' <= word[i+1] <= 'z' && in(word[i+1], vowels)
                return word[i+1]
            end
            if 'A' <= word[i-1] <= 'Z' && in(word[i-1], vowels)
                return word[i-1]
            end
        end
    end
    return ""
end
