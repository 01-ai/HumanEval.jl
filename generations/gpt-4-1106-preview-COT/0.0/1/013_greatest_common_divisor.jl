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
    # Step 1: If either number is zero, return the other number
    if a == 0
        return abs(b)
    elseif b == 0
        return abs(a)
    end

    # Step 2: Use the Euclidean algorithm to find the GCD
    while b != 0
        remainder = a % b
        a = b
        b = remainder
    end

    # Step 3: `a` now contains the GCD
    return abs(a)  # Return the absolute value in case of negative inputs
end
