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
    # Sort the sides to ensure c is the longest side (potential hypotenuse)
    sides = sort([a, b, c])
    
    # Check if the square of the longest side is equal to the sum of squares of the other two sides
    return sides[3]^2 == sides[1]^2 + sides[2]^2
end