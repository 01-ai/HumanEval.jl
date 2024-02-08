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
    # Step 1: Calculate the cube root of the absolute value of the input
    c = round(Int, a^(1/3))

    # Step 2: Check if the cube of the calculated value is equal to the input
    return a == c^3
end
