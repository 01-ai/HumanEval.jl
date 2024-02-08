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



# Step-by-step outline:
# 1. Initialize a counter variable to store the count of uppercase vowels in odd indices.
# 2. Iterate over the string using a for loop.
# 3. Check if the current index is odd.
# 4. If the index is odd, check if the character at that index is an uppercase vowel.
# 5. If the character is an uppercase vowel, increment the counter.
# 6. After the loop ends, return the counter.

# Code:

function count_upper(s::String)::Int
    # Initialize a counter variable to store the count of uppercase vowels in odd indices.
    count = 0

    # Iterate over the string using a for loop.
    for (i, c) in enumerate(s)
        # Check if the current index is odd.
        if i % 2 != 0
            # If the index is odd, check if the character at that index is an uppercase vowel.
            if c in ['A', 'E', 'I', 'O', 'U']
                # If the character is an uppercase vowel, increment the counter.
                count += 1
            end
        end
    end

    # After the loop ends, return the counter.
    return count
end
