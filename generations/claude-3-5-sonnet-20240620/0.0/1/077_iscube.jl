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
    if a == 0
        return true
    end
    
    # Take the absolute value to handle negative numbers
    a = abs(a)
    
    # Find the cube root and round it to the nearest integer
    cube_root = round(Int, cbrt(a))
    
    # Check if the cube of the rounded cube root equals the input
    return cube_root^3 == a
end
