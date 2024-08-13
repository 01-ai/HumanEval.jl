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
    i = 1
    while i <= length(s) - length(sub_s) + 1
        if s[i:i+length(sub_s)-1] == sub_s
            count += 1
            i += length(sub_s) - 1
        end
        i += 1
    end
    return count
end
