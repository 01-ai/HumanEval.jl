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
    n = length(word)
    
    # Start from the second to last character and move towards the beginning
    for i in n-1:-1:2
        # Check if current character is a vowel
        if word[i] in vowels
            # Check if it's surrounded by consonants
            if !(word[i-1] in vowels) && !(word[i+1] in vowels)
                return string(word[i])
            end
        end
    end
    
    # If no vowel found meeting the conditions
    return ""
end
