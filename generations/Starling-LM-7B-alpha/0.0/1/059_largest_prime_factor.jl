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
    i = 2
    while i^2 <= n
        if n % i == 0
            while n % i == 0
                n ÷= i
                largest_factor = i
            end
        end
        i += 1
    end
    return largest_factor
end
