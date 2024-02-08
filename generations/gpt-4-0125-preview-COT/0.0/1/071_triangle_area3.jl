"""
    triangle_area3(a::Number, b::Number, c::Number)::Number

Given the lengths of the three sides of a triangle. Return the area of the
triangle rounded to 2 decimal points if the three sides form a valid triangle.
Otherwise return -1 Three sides make a valid triangle when the sum of any two
sides is greater than the third side.

# Examples

```jldoctest
julia> triangle_area3(3, 4, 5)
6.0

julia> triangle_area3(1, 2, 10)
-1
```
"""
function triangle_area3(a::Number, b::Number, c::Number)::Number
    # Step 1: Check for a valid triangle
    if a + b > c && a + c > b && b + c > a
        # Step 2: Calculate the semi-perimeter
        s = (a + b + c) / 2
        
        # Step 3: Calculate the area using Heron's formula
        area = sqrt(s * (s - a) * (s - b) * (s - c))
        
        # Step 4: Return the area rounded to 2 decimal points
        return round(area, digits=2)
    else
        # If not a valid triangle, return -1
        return -1
    end
end
