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
    i = 2
    while i * i <= n
        if n % i:
            i += 1
        else:
            n ÷= i
        end
    end
    return n
end
