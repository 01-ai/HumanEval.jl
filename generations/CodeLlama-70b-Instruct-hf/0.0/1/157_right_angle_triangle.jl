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
    # Check if the triangle is valid
    if a <= 0 || b <= 0 || c <= 0 || a + b <= c || a + c <= b || b + c <= a
        return false
    end

    # Check if the triangle is a right-angled triangle
    if a^2 + b^2 == c^2 || a^2 + c^2 == b^2 || b^2 + c^2 == a^2
        return true
    else
        return false
    end
end
