"""
    count_upper(s::String)::Int

Given a string s, count the number of uppercase vowels in odd indices.

# Example

```jldoctest
julia> count_upper("aBCdEf")
1

julia> count_upper("abcdefg")
0

julia> count_upper("dBBE")
0
```
"""
function count_upper(s::String)::Int
    # Step 1: Initialize the counter
    count = 0
    
    # Step 2: Define the set of uppercase vowels
    uppercase_vowels = Set(['A', 'E', 'I', 'O', 'U'])
    
    # Step 3: Iterate through the string, considering only odd indices
    for i in 1:2:length(s)
        # Step 4: Check if the character at the odd index is an uppercase vowel
        if s[i] in uppercase_vowels
            # Step 5: Increment the counter if it is an uppercase vowel
            count += 1
        end
    end
    
    # Step 6: Return the counter
    return count
end
