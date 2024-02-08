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
    # Step 1: Remove all the 2s that divide n
    largest_factor = 0
    while n % 2 == 0
        largest_factor = 2
        n = n ÷ 2
    end

    # Step 2: Check for odd factors
    factor = 3
    while factor * factor <= n
        while n % factor == 0
            largest_factor = factor
            n = n ÷ factor
        end
        factor += 2
    end

    # Step 3: If n is a prime number greater than 2
    if n > 2
        largest_factor = n
    end

    return largest_factor
end
