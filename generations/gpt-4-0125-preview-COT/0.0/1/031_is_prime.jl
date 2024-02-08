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
    # Step 1: Input validation
    if n < 2
        return false
    end

    # Step 2: Special cases
    if n == 2 || n == 3
        return true
    end

    # Step 3: Efficient prime checking
    for i in 2:isqrt(n)  # isqrt(n) computes the integer square root of n
        if n % i == 0
            return false
        end
    end

    # Step 4: Return true if no divisors found
    return true
end
