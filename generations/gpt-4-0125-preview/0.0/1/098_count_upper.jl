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
    # Define the set of uppercase vowels for easy checking
    uppercase_vowels = Set(['A', 'E', 'I', 'O', 'U'])
    count = 0

    # Iterate through the string, considering only odd indices
    for i in 1:2:length(s)
        # Check if the character at the odd index is an uppercase vowel
        if s[i] in uppercase_vowels
            count += 1
        end
    end

    return count
end

# Example usage
println(count_upper("aBCdEf"))  # Expected output: 1
println(count_upper("abcdefg"))  # Expected output: 0
println(count_upper("dBBE"))  # Expected output: 0
