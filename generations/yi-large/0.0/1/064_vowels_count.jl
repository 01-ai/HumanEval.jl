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
    count = 0

    for char in s
        if char in vowels
            count += 1
        elseif char == 'y' || char == 'Y'
            # Check if 'y' or 'Y' is at the end of the word
            if lastindex(s) == findlast(==(char), s)
                count += 1
            end
        end
    end

    # Check if the last character is a vowel (for 'y' or 'Y' at the end)
    if s[end] == 'y' || s[end] == 'Y'
        count += 1
    end

    return count
end

# Test cases
println(vowels_count("abcde")) # Expected: 2
println(vowels_count("ACEDY")) # Expected: 3
