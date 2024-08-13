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
    function is_prime(x::Int)::Bool
        if x <= 1
            return false
        elseif x <= 3
            return true
        elseif x % 2 == 0 || x % 3 == 0
            return false
        end
        i = 5
        while i * i <= x
            if x % i == 0 || x % (i + 2) == 0
                return false
            end
            i += 6
        end
        return true
    end

    largest_factor = 1
    # Check for smallest prime factor 2
    while n % 2 == 0
        largest_factor = 2
        n ÷= 2
    end

    # Check for odd factors from 3 onwards
    factor = 3
    while factor * factor <= n
        while n % factor == 0
            largest_factor = factor
            n ÷= factor
        end
        factor += 2
    end

    # If n becomes a prime number greater than 2
    if n > 2
        largest_factor = n
    end

    return largest_factor
end
