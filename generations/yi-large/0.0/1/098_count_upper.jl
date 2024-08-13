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
    for (i, char) in enumerate(s)
        if i % 2 == 1 && char in ['A', 'E', 'I', 'O', 'U']
            count += 1
        end
    end
    return count
end

# Example
println(count_upper("aBCdEf")) # 1
println(count_upper("abcdefg")) # 0
println(count_upper("dBBE")) # 0
