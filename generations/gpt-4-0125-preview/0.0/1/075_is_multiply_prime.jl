"""
    is_multiply_prime(a::Int)::Bool

Write a function that returns `true` if the given number is the multiplication
of 3 prime numbers and false otherwise. Knowing that `a` is less then 100.

# Examples

```jldoctest
julia> is_multiply_prime(30)  # 30 = 2 * 3 * 5
true
```
"""

# Function to check if a number is prime
function is_prime(n::Int)::Bool
    if n <= 1
        return false
    end
    for i in 2:sqrt(n)
        if n % i == 0
            return false
        end
    end
    return true
end

# Function to check if the number is the multiplication of 3 prime numbers
function is_multiply_prime(a::Int)::Bool
    # Early return for numbers less than 2
    if a < 2
        return false
    end

    prime_factors = 0  # To count the number of prime factors

    # Iterate through possible prime factors
    for i in 2:a
        if is_prime(i) && a % i == 0
            prime_factors += 1
            a = a ÷ i  # Update `a` by dividing it by the prime factor
            # If the same prime factor can be used more than once, it doesn't meet the criteria
            if a % i == 0
                return false
            end
        end
        # Early termination if more than 3 prime factors are found
        if prime_factors > 3
            return false
        end
    end

    # The number is the multiplication of 3 prime numbers if exactly 3 prime factors are found
    return prime_factors == 3
end

# Example usage
println(is_multiply_prime(30))  # Should print true
