"""
    vowels_count(s::String)::Int

Write a function `vowels_count` which takes a string representing a word as
input and returns the number of vowels in the string. Vowels in this case are
'a', 'e', 'i', 'o', 'u' in both lower and upper cases. Here, 'y' or 'Y' is also
a vowel, but only when it is at the end of the given word.

# Examples

```jldoctest
julia> vowels_count("abcde")
2

julia> vowels_count("ACEDY")
3
```
"""
function vowels_count(s::String)::Int
    vowels = "aeiou"
    count = 0
    # Check each character in the string
    for char in s
        # If the character is a vowel, increment the count
        if lowercase(char) in vowels
            count += 1
        end
    end
    # Check if the last character is 'y' or 'Y', if so, increment the count
    if endswith(s, 'y') || endswith(s, 'Y')
        count += 1
    end
    return count
end
function vowels_count(s::String)::Int
    vowels = "aeiou"
    count = 0
    # Check each character in the string except the last one
    for char in s[1:end-1]
        # If the character is a vowel, increment the count
        if lowercase(char) in vowels
            count += 1
        end
    end
    # Check if the last character is a vowel or 'y'/'Y'
    last_char = s[end]
    if lowercase(last_char) in vowels || last_char == 'y' || last_char == 'Y'
        count += 1
    end
    return count
end
