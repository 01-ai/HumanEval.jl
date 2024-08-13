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
    # Check if the three sides form a valid triangle
    if (a + b > c) & (b + c > a) & (c + a > b)
        # Calculate the semi-perimeter
        s = (a + b + c) / 2
        # Calculate the area using Heron's formula and round to 2 decimal points
        area = round(sqrt(s * (s - a) * (s - b) * (s - c)), digits=2)
        return area
    else
        return -1
    end
end
