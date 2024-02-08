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
    # Step 1: Check for positive side lengths
    if a <= 0 || b <= 0 || c <= 0
        return false
    end
    
    # Step 2: Sort the sides
    sides = sort([a, b, c])
    
    # Step 3: Apply the Pythagorean theorem
    return sides[1]^2 + sides[2]^2 == sides[3]^2
end
# Right-angled triangle
println(right_angle_triangle(3, 4, 5)) # Should return true

# Not a right-angled triangle
println(right_angle_triangle(1, 2, 3)) # Should return false
