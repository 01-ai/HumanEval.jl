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
    if n <= 1
        throw(DomainError(n, "Input must be greater than 1"))
    end

    # Initialize the largest prime factor
    largest_factor = 0

    # Check if 2 is the largest prime factor
    while n % 2 == 0
        largest_factor = 2
        n = n ÷ 2
    end

    # Check for odd numbers starting from 3
    for i = 3:2:floor(Int, sqrt(n))
        while n % i == 0
            largest_factor = i
            n = n ÷ i
        end
    end

    # Check if n itself is prime
    if n > 2
        largest_factor = n
    end

    return largest_factor
end
