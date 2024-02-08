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
    # Check if a is less than 100
    if a > 100
        return false
    end

    # Check if a is a prime number itself
    if isprime(a)
        return false
    end

    # Check if a can be divided by 2, 3, and 5
    if a % 2 == 0 || a % 3 == 0 || a % 5 == 0
        return false
    end

    # Check if a can be divided by 7, 11, and 13
    if a % 7 == 0 || a % 11 == 0 || a % 13 == 0
        return false
    end

    # Check if a can be divided by 17, 19, and 23
    if a % 17 == 0 || a % 19 == 0 || a % 23 == 0
        return false
    end

    # If we reach this point, a is not divisible by any of the prime numbers
    # less than or equal to 23, so it must be the product of 3 prime numbers
    return true
end
