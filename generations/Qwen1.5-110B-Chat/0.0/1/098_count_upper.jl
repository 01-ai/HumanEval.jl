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
    uppercase_vowels = "AEIOU"
    count = 0
    for i in 1:2:length(s)
        if s[i] ∈ uppercase_vowels
            count += 1
        end
    end
    return count
end
