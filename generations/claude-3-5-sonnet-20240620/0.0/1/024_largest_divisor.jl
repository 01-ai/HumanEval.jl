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
    if n == 1
        return 1
    end
    
    for i in reverse(2:isqrt(n))
        if n % i == 0
            return n ÷ i
        end
    end
    
    return 1
end
