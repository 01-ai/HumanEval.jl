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
    # Step 1: Input validation
    if n <= 1
        error("Input must be greater than 1.")
    end
    
    # Step 2: Find the largest divisor
    for i in n-1:-1:2
        if n % i == 0
            return i  # Found the largest divisor smaller than n
        end
    end
    
    # Step 3: Handle edge case for prime numbers
    return 1  # If no divisor found, return 1 (for prime numbers)
end
