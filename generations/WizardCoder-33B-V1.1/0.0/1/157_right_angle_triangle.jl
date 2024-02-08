"""
    right_angle_triangle(a::Number, b::Number, c::Number)::Bool

Given the lengths of the three sides of a triangle. Return `true` if the three
sides form a right-angled triangle, `false` otherwise. A right-angled triangle
is a triangle in which one angle is right angle or 90 degree.

# Examples

```jldoctest
julia> right_angle_triangle(3, 4, 5)
true

julia> right_angle_triangle(1, 2, 3)
false
```
"""


function right_angle_triangle(a::Number, b::Number, c::Number)::Bool
    sides = [a, b, c]
    sort(sides)
    return sides[3]^2 == sides[1]^2 + sides[2]^2
end

# Test cases
println(right_angle_triangle(3, 4, 5)) # true
println(right_angle_triangle(1, 2, 3)) # false 
