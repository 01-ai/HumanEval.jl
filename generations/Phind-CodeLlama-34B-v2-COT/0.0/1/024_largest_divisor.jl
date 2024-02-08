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
    largest_divisor = 1
    for i in n:-1:2
        if n % i == 0
            largest_divisor = i
        end
    end
    return largest_divisor
end
