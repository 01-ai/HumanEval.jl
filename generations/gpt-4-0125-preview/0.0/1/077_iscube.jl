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
    # Handle the case where a is 0
    if a == 0
        return true
    end
    
    # Calculate the cube root of the absolute value of a
    cube_root = round(cbrt(abs(a)))
    
    # Check if the cube of the rounded cube root equals the absolute value of a
    if cube_root^3 == abs(a)
        return true
    else
        return false
    end
end
