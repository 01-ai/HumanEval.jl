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
    counter = 0
    while occursin(sub_s, s)
        counter += 1
        s = replace(s, sub_s => "", count=1)
    end
    return counter
end
@assert how_many_times("", "a") == 0
@assert how_many_times("aaa", "a") == 3
@assert how_many_times("aaaa", "aa") == 3
