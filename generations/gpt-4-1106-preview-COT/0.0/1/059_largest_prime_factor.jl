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
    # Step 1: Initialize the largest prime factor
    largest_factor = 2
    
    # Step 2: Remove all factors of 2
    while n % 2 == 0
        n ÷= 2
    end
    
    # Step 3: Test odd factors
    factor = 3
    while factor * factor <= n
        while n % factor == 0
            largest_factor = factor
            n ÷= factor
        end
        factor += 2
    end
    
    # Step 4: Check if the remaining n is a prime number
    if n > 2
        largest_factor = n
    end
    
    # Step 5: Return the largest prime factor
    return largest_factor
end
println(largest_prime_factor(13195)) # Should return 29
println(largest_prime_factor(2048))  # Should return 2
