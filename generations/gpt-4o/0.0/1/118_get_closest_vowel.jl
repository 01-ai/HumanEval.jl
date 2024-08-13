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
    len = length(word)
    
    # Iterate from the second last character to the second character
    for i in len-1:-1:2
        if word[i] in vowels && !(word[i-1] in vowels) && !(word[i+1] in vowels)
            return string(word[i])
        end
    end
    
    return ""
end

# Examples
println(get_closest_vowel("yogurt"))  # "u"
println(get_closest_vowel("FULL"))    # "U"
println(get_closest_vowel("quick"))   # ""
println(get_closest_vowel("ab"))      # ""
