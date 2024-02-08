"""
    special_factorial(n::Int)::BigInt

The Brazilian factorial is defined as: brazilian_factorial(n) = n! * (n-1)! *
(n-2)! * ... * 1! where n > 0

The function will receive an integer as input and should return the special
factorial of this integer.

# Examples

```jldoctest
julia> special_factorial(4)
288
```
"""
 function special_factorial(n::Int)::BigInt
    if n <= 1
        return BigInt(1)
    else
        return n * special_factorial(n - 1)
    end
end
