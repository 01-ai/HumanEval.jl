"""
    strlen(x::String)::Int

Return length of given string.

# Examples

```jldoctest
julia> strlen("")
0

julia> strlen("abc")
3
```
"""
function strlen(x::String)::Int
    return length(x)
end
println(strlen("")) # should print 0
println(strlen("abc")) # should print 3
