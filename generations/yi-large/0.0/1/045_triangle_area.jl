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
    # The formula for the area of a triangle given a side and the corresponding height is (base * height) / 2
    area = (a * h) / 2
    return area
end

# Example usage:
# julia> triangle_area(5, 3)
# 7.5