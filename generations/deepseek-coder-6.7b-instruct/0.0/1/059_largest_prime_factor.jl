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
    largest_prime = -1
    while n % 2 == 0
        largest_prime = 2
        n = n � 2
    end

    for i = 3 ∈ 2:2:sqrt(n)
        while n % i == 0
            largest_prime = i
            n = n � i
        end
    end

    if n > 2
        largest_prime = n
    end

    return largest_prime
end

println(largest_prime_factor(13195))
println(largest_prime_factor(2048))

