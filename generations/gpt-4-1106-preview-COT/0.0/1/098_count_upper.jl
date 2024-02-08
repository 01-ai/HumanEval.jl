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
    
    # Step 3: Loop through the characters at odd indices
    for i in 1:2:length(s)
        # Step 4: Check if the character is an uppercase vowel
        if s[i] in uppercase_vowels
            # Step 5: Increment the counter
            count += 1
        end
    end
    
    # Step 6: Return the counter value
    return count
end
println(count_upper("aBCdEf"))  # Expected output: 1
println(count_upper("abcdefg"))  # Expected output: 0
println(count_upper("dBBE"))    # Expected output: 0
