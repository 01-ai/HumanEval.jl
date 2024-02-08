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
    count = 0
    vowels = ['A', 'E', 'I', 'O', 'U']
    for i in 1:length(s)
        if i % 2 != 0 && s[i] in vowels
            count += 1
        end
    end
    return count
end

# Test cases
println(count_upper("aBCdEf"))  # Expected output: 1
println(count_upper("abcdefg"))  # Expected output: 0
println(count_upper("dBBE"))  # Expected output: 0

