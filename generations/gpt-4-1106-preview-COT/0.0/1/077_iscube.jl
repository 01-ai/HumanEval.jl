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
    # Step 1: Check if `a` is 0
    if a == 0
        return true
    end
    
    # Step 2: Convert `a` to a positive number if it is negative
    abs_a = abs(a)
    
    # Step 3: Calculate the cube root of the absolute value of `a`
    cube_root = cbrt(abs_a)
    
    # Step 4: Round the cube root to the nearest integer
    rounded = round(Int, cube_root)
    
    # Step 5: Cube the rounded integer and compare it to `abs_a`
    if rounded^3 == abs_a
        # Step 6: If they are equal, return `true`
        return true
    else
        # Step 7: Otherwise, return `false`
        return false
    end
end
println(iscube(1))    # true
println(iscube(2))    # false
println(iscube(-1))   # true
println(iscube(64))   # true
println(iscube(0))    # true
println(iscube(180))  # false
