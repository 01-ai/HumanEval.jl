"""
    triangle_area(a, h)

Given length of a side and high return area for a triangle.

# Examples

```jldoctest
julia> triangle_area(5, 3)
7.5
```
"""

"""
    triangle_area(a, h)

Given length of a side and high return area for a triangle.

# Examples

```jldoctest
julia> triangle_area(5, 3)
7.5
```
"""
function triangle_area(a, h)
    # Calculate the area using the formula
    area = 0.5 * a * h
    return area
end
