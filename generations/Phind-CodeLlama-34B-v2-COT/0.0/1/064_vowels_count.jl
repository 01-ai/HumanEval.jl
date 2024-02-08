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
    # Initialize vowel count
    count = 0

    # Define vowels
    vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']

    # Iterate over each character in the string
    for c in s
        # Check if the character is a vowel
        if c in vowels
            # Increment vowel count
            count += 1
        end
    end

    # Check if the last character is 'y' or 'Y'
    if s[end] == 'y' || s[end] == 'Y'
        # Increment vowel count
        count += 1
    end

    # Return vowel count
    return count
end
