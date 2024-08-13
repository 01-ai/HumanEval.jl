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
    # Check for divisibility by 2
    while n % 2 == 0
        largest_factor = 2
        n ÷= 2
    end
    # Check for odd factors from 3 onwards
    factor = 3
    while n > 1
        while n % factor == 0
            largest_factor = factor
            n ÷= factor
        end
        factor += 2
    end
    return largest_factor
end
