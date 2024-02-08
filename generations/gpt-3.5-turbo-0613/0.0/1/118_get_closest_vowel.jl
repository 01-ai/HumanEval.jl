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
    vowels = Set(['a', 'e', 'i', 'o', 'u'])
    consonants = Set(['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z'])
    
    # Remove vowels at the beginning and ending of the word
    word = replace(word, r"^[aeiou]+", "")
    word = replace(word, r"[aeiou]+$", "")
    
    # Iterate over the characters of the word from right to left
    for i = length(word):-1:2
        if word[i] in consonants && word[i-1] in vowels && word[i-2] in consonants
            return string(word[i-1])
        end
    end
    
    return ""
end
