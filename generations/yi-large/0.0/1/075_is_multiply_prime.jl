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
function is_multiply_prime(a::Int)::Bool
    if a <= 0
        return false
    end

    # Check if a is the product of exactly 3 prime numbers
    primes = [2]
    for i in 3:2:a  # Skip even numbers since 2 is the only even prime
        if all(i % p != 0 for p in primes)  # Check if i is prime
            push!(primes, i)
        end
    end

    # Check if a can be decomposed into the product of 3 distinct primes
    for i in primes
        for j in primes
            for k in primes
                if i * j * k == a
                    return true
                end
            end
        end
    end

    return false
end

# Example usage:
# julia> is_multiply_prime(30)  # 30 = 2 * 3 * 5
# true
