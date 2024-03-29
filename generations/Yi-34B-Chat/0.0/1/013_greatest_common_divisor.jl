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
    # Base case: if one of the numbers is 0, the GCD is the other number
    if a == 0 || b == 0
        return abs(a) > abs(b) ? abs(a) : abs(b)
    end

    # If a and b are both odd, the GCD is 1
    if a % 2 == 1 && b % 2 == 1
        return 1
    end

    # If a and b are both even, we can divide them by 2 and continue
    while a % 2 == 0 && b % 2 == 0
        a //= 2
        b //= 2
    end

    # If a is even, we can divide it by 2 and continue
    while a % 2 == 0
        a //= 2
    end

    # If b is even, we can divide it by 2 and continue
    while b % 2 == 0
        b //= 2
    end

    # At this point, a and b are both odd and we can use Euclid's algorithm
    if a > b
        a, b = b, a
    end

    # Loop until b is 0
    while b > 0
        # Update a and b
        r = a % b
        a = b
        b = r
    end

    # The GCD is the last non-zero remainder
    return a
end
