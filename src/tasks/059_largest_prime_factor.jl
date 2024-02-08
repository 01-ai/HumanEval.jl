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
    function is_prime(k)
        k < 2 && return false
        k == 2 && return true
        for i = 2:ceil(Int, sqrt(k))
            if k % i == 0
                return false
            end
        end
        return true
    end

    largest = 1
    for j = 2:n
        if n % j == 0 && is_prime(j)
            largest = max(largest, j)
        end
    end
    return largest
end
