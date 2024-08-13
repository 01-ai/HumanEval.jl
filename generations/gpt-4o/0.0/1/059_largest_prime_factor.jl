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
    # Step 1: Handle the factor of 2
    while n % 2 == 0
        n = div(n, 2)
    end
    largest = 2
    
    # Step 2: Check for odd factors from 3 onwards
    factor = 3
    while factor * factor <= n
        while n % factor == 0
            n = div(n, factor)
            largest = factor
        end
        factor += 2
    end
    
    # Step 3: If n is still greater than 2, then it is a prime factor
    if n > 2
        largest = n
    end
    
    return largest
end

# Examples
println(largest_prime_factor(13195))  # Output: 29
println(largest_prime_factor(2048))   # Output: 2
