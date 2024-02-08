"""
    largest_divisor(n::Int)::Int

For a given number `n`, find the largest number that divides `n` evenly, smaller
than `n`.

```jldoctest
julia> largest_divisor(15)
5
```
"""
 function largest_divisor(n::Int)::Int
    divisors = []
    for i in 2:(n-1)
        if n % i == 0
            push!(divisors, i)
        end
    end
    return maximum(divisors)
end
