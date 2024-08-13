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
    # Check for the special case of zero
    if a == 0
        return true
    end
    
    # Determine the sign and work with absolute value
    sign_a = sign(a)
    abs_a = abs(a)
    
    # Calculate the cube root and round it to the nearest integer
    cube_root = round(Int, abs_a^(1/3))
    
    # Check if the cube of the rounded root equals the original number
    return (cube_root^3 * sign_a) == a
end
