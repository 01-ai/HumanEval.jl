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

# Helper function to calculate factorial
function factorial(n::Int)::BigInt
    result = BigInt(1)
    for i in 1:n
        result *= i
    end
    return result
end

# Main function to calculate the special (Brazilian) factorial
function special_factorial(n::Int)::BigInt
    # Input validation
    if n <= 0
        throw(ArgumentError("Input must be greater than 0"))
    end
    
    # Initialization
    special_fact = BigInt(1)
    
    # Calculation
    for i in 1:n
        special_fact *= factorial(i)
    end
    
    # Return the result
    return special_fact
end

# Example usage
println(special_factorial(4))  # Expected output: 288
