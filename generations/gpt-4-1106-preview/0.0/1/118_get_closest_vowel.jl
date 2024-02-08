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
    # Reverse the word to find the closest vowel from the right side
    reversed_word = reverse(word)
    
    # Initialize a flag to indicate if we are between consonants
    between_consonants = false
    
    for (index, char) in enumerate(reversed_word)
        # Skip the first and last characters if they are vowels
        if index == 1 || index == length(reversed_word)
            if char in vowels
                continue
            end
        end
        
        # Check if the current character is a consonant
        if !(char in vowels)
            # If we are between consonants and find a consonant, we can stop
            if between_consonants
                return ""
            end
            between_consonants = true
        elseif between_consonants
            # If we find a vowel and we are between consonants, return it
            return string(char)
        end
    end
    
    # If no vowel is found between consonants, return an empty string
    return ""
end

# Example usage:
println(get_closest_vowel("yogurt"))  # "u"
println(get_closest_vowel("FULL"))    # "U"
println(get_closest_vowel("quick"))   # ""
println(get_closest_vowel("ab"))      # ""
