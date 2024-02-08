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
    # Step 1: Check if n is valid
    if n <= 0
        throw(ArgumentError("n must be greater than 0"))
    end
    
    # Initialize the result as BigInt to handle large numbers
    result = BigInt(1)
    
    # Step 2 and 3: Calculate the factorial of each number from n to 1 and multiply them
    for i in 1:n
        factorial_i = BigInt(1)
        for j in 1:i
            factorial_i *= j
        end
        result *= factorial_i
    end
    
    # Step 4: Return the result
    return result
end

# Example usage
println(special_factorial(4))  # Expected output: 288
