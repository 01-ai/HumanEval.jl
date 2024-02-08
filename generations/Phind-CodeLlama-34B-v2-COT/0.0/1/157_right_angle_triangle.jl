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
    # Step 2: Sort the sides in ascending order
    sides = sort([a, b, c])
    
    # Step 3: Check if the sum of the squares of the smallest two sides is equal to the square of the largest side
    is_right_angle = sides[1]^2 + sides[2]^2 == sides[3]^2
    
    # Step 4: Return the result
    return is_right_angle
end
