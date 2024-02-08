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
    counter = 0
    for (i, c) in enumerate(s)
        if i % 2 != 0 && c in "AEIOU"
            counter += 1
        end
    end
    return counter
end
