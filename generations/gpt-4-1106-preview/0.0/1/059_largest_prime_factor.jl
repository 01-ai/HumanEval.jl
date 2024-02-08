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
    # Initialize the largest prime factor
    largest_factor = 1

    # Divide n by 2 until it becomes odd
    while n % 2 == 0
        largest_factor = 2
        n = div(n, 2)
    end

    # Now n must be odd, start checking for factors from 3 onwards
    factor = 3
    while factor * factor <= n
        while n % factor == 0
            largest_factor = factor
            n = div(n, factor)
        end
        factor += 2
    end

    # If n is a prime number greater than 2, then n itself is the largest factor
    if n > 2
        largest_factor = n
    end

    return largest_factor
end

# Examples
println(largest_prime_factor(13195)) # Should print 29
println(largest_prime_factor(2048))  # Should print 2
