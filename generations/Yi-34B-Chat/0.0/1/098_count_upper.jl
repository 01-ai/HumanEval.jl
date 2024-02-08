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
    # Initialize count to 0
    count = 0

    # Loop through the string
    for i in 1:length(s)
        # Check if the current character is an uppercase vowel and the index is odd
        if isupper(s[i]) && isvowel(s[i]) && (i % 2 == 1)
            # Increment the count
            count += 1
        end
    end

    # Return the count
    return count
end
