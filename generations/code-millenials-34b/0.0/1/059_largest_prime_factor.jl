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
    while n % 2 == 0
        n = div(n, 2)
    end
    i = 3
    while i * i <= n
        while n % i == 0
            n = div(n, i)
        end
        i += 2
    end
    return n
end

# Test cases
@assert largest_prime_factor(13195) == 29
@assert largest_prime_factor(2048) == 2
