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
    for i = n-1 : -1 : 1
        if n % i == 0
            return i
        end
    end
end

# Test the function
@assert largest_divisor(15) == 5
@assert largest_divisor(10) == 5
@assert largest_divisor(9) == 3
@assert largest_divisor(8) == 4
@assert largest_divisor(7) == 1

