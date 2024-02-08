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
    # Base case: if n is 0 or 1, the special factorial is 1
    if n <= 1
        return 1
    end

    # Calculate the factorial of n and each previous number
    factorials = [BigInt(i) for i in 1:n]
    result = factorials[n]
    for i in n-1:-1:1
        result *= factorials[i]
    end

    return result
end
