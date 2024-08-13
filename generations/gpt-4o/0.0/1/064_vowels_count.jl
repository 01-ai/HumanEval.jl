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
    # Define the set of vowels
    vowels = Set(['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U'])
    
    # Initialize the count of vowels
    count = 0
    
    # Iterate through each character in the string
    for i in 1:length(s)
        if s[i] in vowels
            count += 1
        elseif (i == length(s)) && (s[i] == 'y' || s[i] == 'Y')
            count += 1
        end
    end
    
    return count
end

# Examples
println(vowels_count("abcde"))  # Output: 2
println(vowels_count("ACEDY"))  # Output: 3
