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
    largest_factor = 1
    
    # Handle all factors of 2
    while n % 2 == 0
        largest_factor = 2
        n = div(n, 2)
    end
    
    # Check odd factors up to sqrt(n)
    for i in 3:2:isqrt(n)
        while n % i == 0
            largest_factor = i
            n = div(n, i)
        end
    end
    
    # If n is still greater than 2, it's prime
    if n > 2
        largest_factor = n
    end
    
    return largest_factor
end
