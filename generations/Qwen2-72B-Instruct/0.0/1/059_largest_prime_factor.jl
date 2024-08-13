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
    factor = 2
    last_factor = 1
    while n > 1
        if n % factor == 0
            last_factor = factor
            n = div(n, factor)
            while n % factor == 0
                n = div(n, factor)
            end
        end
        factor += 1
        if factor * factor > n
            return n > 1 ? n : last_factor
        end
    end
    return last_factor
end
