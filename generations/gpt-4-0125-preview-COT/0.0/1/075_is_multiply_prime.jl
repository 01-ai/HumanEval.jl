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

# Step 1: Check if a number is prime
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

# Step 2 & 3: Find prime factors and count them
function is_multiply_prime(a::Int)::Bool
    if a < 2
        return false
    end
    
    prime_factors_count = 0
    for i in 2:a
        # Check if i is a prime factor of a
        if a % i == 0 && is_prime(i)
            prime_factors_count += 1
            # Divide a by i to reduce the number and possibly find other factors
            while a % i == 0
                a = a ÷ i
            end
        end
    end
    
    # Check if the number of prime factors is exactly 3
    return prime_factors_count == 3
end

# Examples
println(is_multiply_prime(30))  # Should return true
