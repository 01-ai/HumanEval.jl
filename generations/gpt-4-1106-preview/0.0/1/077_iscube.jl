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
    # A cube root of a number should be an integer if the number is a perfect cube.
    # We use cbrt to get the cube root and round it to the nearest integer.
    cube_root = round(cbrt(a))
    
    # We then cube the rounded cube root and check if it equals the original number.
    return cube_root^3 == a
end

# Examples
println(iscube(1))   # true
println(iscube(2))   # false
println(iscube(-1))  # true
println(iscube(64))  # true
println(iscube(0))   # true
println(iscube(180)) # false
