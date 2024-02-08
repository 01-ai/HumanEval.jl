"""
    is_prime(n::Int)

Return `true` if a given number is prime, and `false` otherwise.

# Examples

```jldoctest
julia> is_prime(6)
false

julia> is_prime(101)
true

julia> is_prime(11)
true

julia> is_prime(13441)
true

julia> is_prime(61)
true

julia> is_prime(4)
false

julia> is_prime(1)
false
```
"""
function is_prime(n::Int)
    # Check if the number is less than 2
    if n < 2
        return false
    end

    # Iterate through all numbers from 2 to the square root of the given number
    for i in 2:sqrt(n)
        # Check if the given number is divisible by the current number
        if n % i == 0
            # If it is, return false because the number is not prime
            return false
        end
    end

    # If the given number is not divisible by any of the numbers, return true because the number is prime
    return true
end
