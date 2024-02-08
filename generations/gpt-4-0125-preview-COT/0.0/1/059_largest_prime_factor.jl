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
    largest_factor = 1

    while factor * factor <= n
        if n % factor == 0
            largest_factor = factor
            n ÷= factor
        else
            factor == 2 ? factor += 1 : factor += 2
        end
    end

    if n > 1
        largest_factor = n
    end

    return largest_factor
end
