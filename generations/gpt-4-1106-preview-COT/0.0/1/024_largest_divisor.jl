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
    # Step 1: Check if n is greater than 1
    if n <= 1
        error("Input must be an integer greater than 1")
    end
    
    # Step 2: Loop from n-1 down to 2 to find the largest divisor
    for i in n-1:-1:2
        # Step 3: Check if i divides n evenly
        if n % i == 0
            # Step 4: Return the divisor if found
            return i
        end
    end
    
    # Step 5: Return 1 as a fallback, although this should not be reached for n > 1
    return 1
end
println(largest_divisor(15))  # Should print 5
