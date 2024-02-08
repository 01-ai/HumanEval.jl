"""
    greatest_common_divisor(a::Int, b::Int)::Int

Return a greatest common divisor of two integers `a` and `b`.

# Examples

```jldoctest
julia> greatest_common_divisor(3, 5)
1

julia> greatest_common_divisor(25, 15)
5
```
"""


function greatest_common_divisor(a::Int, b::Int)::Int
    while b != 0
        a, b = b, a % b
    end
    return a
end

# Test cases
@assert greatest_common_divisor(3, 5) == 1
@assert greatest_common_divisor(25, 15) == 5
@assert greatest_common_divisor(101, 103) == 1
@assert greatest_common_divisor(101, 0) == 101
@assert greatest_common_divisor(0, 101) == 101
@assert greatest_common_divisor(0, 0) == 0

