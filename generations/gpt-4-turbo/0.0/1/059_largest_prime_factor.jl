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
    # Start with the smallest prime factor
    max_prime = -1
    
    # Check for number of 2s that divide n
    while n % 2 == 0
        max_prime = 2
        n = n ÷ 2
    end
    
    # n must be odd at this point, thus a skip of 2 (i.e., 3, 5, 7, 9, ...) is sufficient
    for i in 3:2:sqrt(n)
        # While i divides n, print i and divide n
        while n % i == 0
            max_prime = i
            n = n ÷ i
        end
    end
    
    # This condition is to check if n is a prime number greater than 2
    if n > 2
        max_prime = n
    end
    
    return max_prime
end
