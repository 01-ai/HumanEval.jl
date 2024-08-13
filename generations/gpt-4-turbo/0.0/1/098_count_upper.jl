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
    # Define the set of uppercase vowels
    uppercase_vowels = Set(['A', 'E', 'I', 'O', 'U'])
    
    # Initialize a counter for uppercase vowels at odd indices
    count = 0
    
    # Iterate over the string, considering only odd indices (1-based in Julia)
    for i in 1:2:length(s)
        # Check if the character at the odd index is an uppercase vowel
        if s[i] in uppercase_vowels
            count += 1
        end
    end
    
    return count
end
