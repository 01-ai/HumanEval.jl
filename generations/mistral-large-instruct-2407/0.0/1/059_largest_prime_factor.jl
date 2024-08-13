"""
    largest_prime_factor(n::Int)::Int

Return the largest prime factor of `n`. Assume `n > 1` and is not a prime.

# Examples

```jldoctest
julia> largest_prime_factor(13195)
29

julia> largest_prime_factor(2048)
2
```
"""

"""
    largest_prime_factor(n::Int)::Int

Return the largest prime factor of `n`. Assume `n > 1` and is not a prime.

# Examples

```jldoctest
julia> largest_prime_factor(13195)
29

julia> largest_prime_factor(2048)
2
```
"""
function largest_prime_factor(n::Int)::Int
    # Function to check if a number is prime
    function is_prime(x::Int)::Bool
        if x <= 1
            return false
        end
        for i in 2:isqrt(x)
            if x % i == 0
                return false
            end
        end
        return true
    end

    # Start with the smallest prime number
    largest_factor = 2

    # Divide n by 2 to remove all factors of 2
    while n % 2 == 0
        n ÷= 2
    end

    # Check for odd factors from 3 upwards
    for i in 3:2:isqrt(n)
        while n % i == 0
            largest_factor = i
            n ÷= i
        end
    end

    # If n is a prime number greater than 2
    if n > 2
        largest_factor = n
    end

    return largest_factor
end
