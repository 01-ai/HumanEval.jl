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
    for i in reverse(1:div(n, 2))
        if n % i == 0
            return i
        end
    end
    return 1  # This case should never be reached for n > 1
end
