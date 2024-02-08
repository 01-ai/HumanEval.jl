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
    if length(s) == 0 || length(sub_s) == 0
        return 0
    end

    count = 0
    for i = 1:length(s) - length(sub_s) + 1
        if s[i:i + length(sub_s) - 1] == sub_s
            count += 1
        end
    end

    return count
end
