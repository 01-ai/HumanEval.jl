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
    # Step 1: Normalize the input
    s_lower = lowercase(s)
    
    # Step 2: Define the vowels
    vowels = Set(['a', 'e', 'i', 'o', 'u'])
    
    # Step 3: Initialize a counter
    count = 0
    
    # Step 4: Iterate through the string
    for (i, char) in enumerate(s_lower)
        # Step 4a: Check for vowels
        if char in vowels
            count += 1
        # Step 4b: Special case for 'y'
        elseif char == 'y' && i == length(s_lower)
            count += 1
        end
    end
    
    # Step 5: Return the counter
    return count
end
