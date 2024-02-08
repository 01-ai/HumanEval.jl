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
    sides_squared = [x^2 for x in sides]
    for i in 1:3
        other_sides = [sides_squared[j] for j in 1:3 if j != i]
        if sum(other_sides) == sides_squared[i]
            return true
        end
    end
    return false
end

# Test cases
@assert right_angle_triangle(3, 4, 5) == true
@assert right_angle_triangle(1, 2, 3) == false

