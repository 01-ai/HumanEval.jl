"""
    how_many_times(s::String, sub_s::String)::Int

Find how many times a given substring can be found in the original string. Count
overlaping cases.

# Examples

```jldoctest
julia> how_many_times("", "a")
0

julia> how_many_times("aaa", "a")
3

julia> how_many_times("aaaa", "aa")
3
```
"""
function how_many_times(s::String, sub_s::String)::Int
    count = 0
    len = length(sub_s)
    for i in 1:length(s)-len+1
        if s[i:i+len-1] == sub_s
            count += 1
        end
    end
    return count
end
