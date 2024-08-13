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
    count = start = 0
    while start <= length(s) - length(sub_s)
        index = search(s, sub_s, start)
        if index !== nothing
            count += 1
            start = index + 1
        else
            break
        end
    end
    count
end
