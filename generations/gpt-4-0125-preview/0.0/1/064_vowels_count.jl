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
    # Define the vowels including 'y' and 'Y' for special consideration
    vowels = Set(['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U'])
    count = 0

    # Iterate through each character in the string
    for c in s
        # Check if the character is a vowel and increment the count if it is
        if c in vowels
            count += 1
        end
    end

    # Check if the last character is 'y' or 'Y' and increment the count if it is
    if !isempty(s) && (s[end] == 'y' || s[end] == 'Y')
        count += 1
    end

    return count
end
