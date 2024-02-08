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
    # Step 1: Handle the special case of 0
    if a == 0
        return true
    end

    # Step 2: Work with the absolute value for the calculation
    abs_a = abs(a)

    # Step 3: Calculate the cube root
    cube_root = cbrt(abs_a)

    # Step 4: Round the cube root and check if cubing it gives the original number
    rounded_root = round(cube_root)
    if rounded_root^3 == abs_a
        return true
    else
        return false
    end
end
