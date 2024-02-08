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
    vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']
    y_vowels = ['y', 'Y']
    count = 0
    for c in s
        if c in vowels
            count += 1
        end
    end
    # Check if last character is 'y' or 'Y'
    if s[end] in y_vowels
        count += 1
    end
    return count
end

# Test cases
println(vowels_count("abcde"))  # Expected output: 2
println(vowels_count("ACEDY"))  # Expected output: 3

