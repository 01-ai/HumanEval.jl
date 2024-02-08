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
    # Using Heron's formula to calculate the area of the triangle
    # If the area is a whole number, then the triangle is right-angled
    # Otherwise, it's not
    s = (a + b + c) / 2
    area = sqrt(s * (s - a) * (s - b) * (s - c))

    return isinteger(area)
end
