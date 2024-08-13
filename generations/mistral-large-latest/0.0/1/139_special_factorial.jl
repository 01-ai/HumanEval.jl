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
    if n < 0
        error("Input should be a non-negative integer")
    elseif n == 0
        return one(BigInt)
    else
        result = one(BigInt)
        for i in 1:n
            factorial_i = BigInt(1)
            for j in 1:i
                factorial_i *= j
            end
            result *= factorial_i
        end
        return result
    end
end
