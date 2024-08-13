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
    if a < 2
        return false
    end

    prime_factors = 0
    # Check for divisibility by 2
    if a % 2 == 0
        prime_factors += 1
        a ÷= 2
        # Make sure it's not divisible by 2 more than once
        if a % 2 == 0
            return false
        end
    end

    # Check for divisibility by odd numbers
    d = 3
    while d * d <= a
        if a % d == 0
            prime_factors += 1
            a ÷= d
            # Make sure it's not divisible by the same prime more than once
            if a % d == 0
                return false
            end
        end
        d += 2
    end

    # If a is a prime number greater than 2
    if a > 2
        prime_factors += 1
    end

    return prime_factors == 3
end
