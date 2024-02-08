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
    max_prime = 1
    for i in 2:n
        if n % i == 0
            max_prime = max(max_prime, i)
        end
    end
    return max_prime
end
