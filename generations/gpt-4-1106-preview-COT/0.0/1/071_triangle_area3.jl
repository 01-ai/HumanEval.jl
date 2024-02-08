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

To implement the `triangle_area3` function, we will follow these steps:

1. Check if the given sides `a`, `b`, and `c` can form a valid triangle. This is true if and only if the sum of any two sides is greater than the third side. Specifically, we need to check the following three conditions:
   - `a + b > c`
   - `a + c > b`
   - `b + c > a`
   If any of these conditions is not met, we return `-1`.

2. If the sides form a valid triangle, calculate the area using Heron's formula. Heron's formula states that the area `A` of a triangle with sides of lengths `a`, `b`, and `c` is:
   - `A = sqrt(s * (s - a) * (s - b) * (s - c))`
   where `s` is the semi-perimeter of the triangle, calculated as `(a + b + c) / 2`.

3. Round the calculated area to 2 decimal points.

4. Return the rounded area.

Now, let's write the code for the `triangle_area3` function.
