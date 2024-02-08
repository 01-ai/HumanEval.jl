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

# Helper function to check if a number is prime
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

# Main function to check if the number is a multiplication of 3 prime numbers
function is_multiply_prime(a::Int)::Bool
    # Check if the number is less than 100
    if a >= 100
        return false
    end

    # Find all prime numbers less than `a`
    primes = [p for p in 2:a-1 if is_prime(p)]

    # Check for a combination of three primes that multiply to `a`
    for i in 1:length(primes)
        for j in i:length(primes)
            for k in j:length(primes)
                if primes[i] * primes[j] * primes[k] == a
                    return true
                end
            end
        end
    end

    # If no combination is found, return false
    return false
end
