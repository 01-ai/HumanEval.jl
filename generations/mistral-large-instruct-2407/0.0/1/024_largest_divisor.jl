"""
    largest_divisor(n::Int)::Int

For a given number `n`, find the largest number that divides `n` evenly, smaller
than `n`.

```jldoctest
julia> largest_divisor(15)
5
```
"""

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
    # Start from the largest possible divisor smaller than n
    for i in (n-1):-1:1
        if n % i == 0
            return i
        end
    end
    # If no divisor is found, return 1 (since 1 divides any number)
    return 1
end
