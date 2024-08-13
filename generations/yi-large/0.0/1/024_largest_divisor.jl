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
    # Start from n-1 and find the largest divisor
    for i in n-1:-1:1
        if n % i == 0
            return i
        end
    end
    return 1  # If no divisor other than 1 is found, return 1
end
