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
    # Check if the lengths satisfy the Pythagorean theorem
    # The condition for a right-angled triangle is that the square of the longest
    # side is equal to the sum of the squares of the other two sides.
    
    # Sort the sides to ensure c is the longest side
    sides = sort([a, b, c])
    
    # Now, sides[3] is the longest side
    return sides[1]^2 + sides[2]^2 == sides[3]^2
end

# Example usage:
# println(right_angle_triangle(3, 4, 5))  # true
# println(right_angle_triangle(1, 2, 3))  # false
