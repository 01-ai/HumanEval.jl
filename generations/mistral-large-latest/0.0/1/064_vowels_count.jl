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
    vowels = "aeiouAEIOU"
    count = 0
    for char in s
        if char == 'y' || char == 'Y'
            if char == last(s)
                count += 1
            end
        elseif char in vowels
            count += 1
        end
    end
    return count
end
