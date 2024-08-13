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

import Math.sqrt, Math.cbrt, isinteger

"""
    iscube(a::Int)::Bool

Check if `a` is a cube of some integer number.
"""
function iscube(a::Int)
    # Calculate the cube root of the absolute value of a
    cube_root = cbrt(abs(a))
    
    # Check if the cube root is an integer by comparing it to its rounded value
    return isinteger(cube_root) && (a >= 0 || cube_root == round(Int, cube_root))
end
