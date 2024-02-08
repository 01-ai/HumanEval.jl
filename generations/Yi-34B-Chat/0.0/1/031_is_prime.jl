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
    # Base cases: 1 and 0 are not prime
    if n <= 1
        return false
    end

    # Check if n is divisible by 2
    if n % 2 == 0
        return false
    end

    # Check if n is divisible by any prime number from 3 to sqrt(n)
    for i in 3:2:sqrt(n)
        if n % i == 0
            return false
        end
    end

    # If we reach this point, n is prime
    return true
end
