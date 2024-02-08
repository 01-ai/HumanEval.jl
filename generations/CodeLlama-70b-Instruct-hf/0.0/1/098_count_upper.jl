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
    # Initialize the count of uppercase vowels to 0
    count = 0

    # Iterate through the string
    for (i, c) in enumerate(s)
        # Check if the character is an uppercase vowel and its index is odd
        if c in ('A', 'E', 'I', 'O', 'U') && isodd(i)
            # Increment the count
            count += 1
        end
    end

    # Return the count of uppercase vowels
    return count
end
