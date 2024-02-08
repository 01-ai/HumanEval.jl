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
    for i in n-1:-1:1
        if n % i == 0
            return i
        end
    end
end

# Test the function
println(largest_divisor(15)) # Output: 5
