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
    # Start from n-1 and go down to find the largest divisor
    for i in reverse(2:n-1)
        if n % i == 0
            return i
        end
    end
    # If no divisor is found other than 1, return 1
    return 1
end

# Example usage:
# println(largest_divisor(15)) # Should print 5
