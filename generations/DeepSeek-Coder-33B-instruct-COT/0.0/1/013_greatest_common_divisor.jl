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
    while a != b
        if a > b
            a = a - b
        else
            b = b - a
        end
    end
    return a
end
