"""
    iscube(a::Int)::Bool

Write a function that takes an integer `a` and returns `true` if this ingeger is a
cube of some integer number.

Note: you may assume the input is always valid.

# Examples

```jldoctest
julia> iscube(1)
true

julia> iscube(2)
false

julia> iscube(-1)
true

julia> iscube(64)
true

julia> iscube(0)
true

julia> iscube(180)
false
```
"""


function iscube(a::Int)::Bool
    c = round(Int, cuberoot(a))
    return c^3 == a
end

# Test the function with the provided examples
println(iscube(1)) # true
println(iscube(2)) # false
println(iscube(-1)) # true
println(iscube(64)) # true
println(iscube(0)) # true
println(iscube(180)) # false
