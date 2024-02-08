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
    return a == 0 || a^(1/3) % 1 == 0
end

# Test cases
@assert iscube(1) == true
@assert iscube(2) == false
@assert iscube(-1) == true
@assert iscube(64) == true
@assert iscube(0) == true
@assert iscube(180) == false
