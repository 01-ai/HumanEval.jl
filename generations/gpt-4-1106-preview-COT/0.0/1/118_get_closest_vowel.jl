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
    # Step 1: Define the vowels
    vowels = Set(['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U'])
    
    # Step 2: Iterate over the word from right to left, skipping the first and last characters
    for i in length(word)-1:-1:2
        # Step 3: Check if the current character is a vowel and is surrounded by consonants
        if word[i] in vowels && !(word[i-1] in vowels) && !(word[i+1] in vowels)
            # Step 4: Return the vowel as a string
            return string(word[i])
        end
    end
    
    # Step 5: Return an empty string if no vowel is found
    return ""
end
println(get_closest_vowel("yogurt")) # Should return "u"
println(get_closest_vowel("FULL"))   # Should return "U"
println(get_closest_vowel("quick"))  # Should return ""
println(get_closest_vowel("ab"))     # Should return ""
