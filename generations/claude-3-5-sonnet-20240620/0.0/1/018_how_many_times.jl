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
    if isempty(sub_s)
        return 0
    end
    
    count = 0
    i = 1
    
    while i <= length(s)
        j = findfirst(sub_s, s[i:end])
        if j === nothing
            break
        end
        count += 1
        i += j[1]
    end
    
    return count
end
