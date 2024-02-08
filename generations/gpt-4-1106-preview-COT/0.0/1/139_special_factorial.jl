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
    # Step 2: Check if n is greater than 0
    if n <= 0
        throw(ArgumentError("n must be a positive integer"))
    end

    # Step 3: Initialize the result as BigInt
    result = BigInt(1)

    # Step 4: Loop from n down to 1
    for i in n:-1:1
        # Step 4a: Calculate the factorial of i
        factorial_i = BigInt(1)
        for j in 1:i
            factorial_i *= j
        end

        # Step 4b: Multiply the result by the factorial of i
        result *= factorial_i
    end

    # Step 5: Return the final result
    return result
end
