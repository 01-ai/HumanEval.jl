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
function isprime(n::Int)
    if n <= 1
        return false
    elseif n <= 3
        return true
    elseif n % 2 == 0
        return false
    else
        for i in 3:2:isqrt(n)
            if n % i == 0
                return false
            end
        end
        return true
    end
end

function largest_prime_factor(n::Int)::Int
    for i in n-1:-1:2
        if n % i == 0 && isprime(i)
            return i
        end
    end
    error("Input is not valid")
end
