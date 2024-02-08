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
    vowels = "aeiouAEIOU"
    vowel_index = 0
    for i in reverse(eachindex(word))
        if word[i] in vowels && i > 1 && i < length(word)
            vowel_index = i
            break
        end
    end
    return vowel_index > 0 ? word[vowel_index] : ""
end
