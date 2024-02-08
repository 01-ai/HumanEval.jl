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
    # Base case: if b is 0, return a
    if b == 0
        return a
    else
        # Recursive step: call the function with b and the remainder of a divided by b
        return greatest_common_divisor(b, a % b)
    end
end

# Examples
println(greatest_common_divisor(3, 5))  # Expected output: 1
println(greatest_common_divisor(25, 15))  # Expected output: 5
