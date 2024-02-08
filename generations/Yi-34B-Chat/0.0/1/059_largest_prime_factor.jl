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
    # Base case: n is a prime number
    if isprime(n)
        return n
    end

    # Iterate over the square root of n to find the largest prime factor
    for i in 2:sqrt(n)
        if n % i == 0
            # If i is a factor of n, return the larger of i and n/i
            return max(i, n // i)
        end
    end

    # If no factor is found, n must be a prime square
    return n
end
