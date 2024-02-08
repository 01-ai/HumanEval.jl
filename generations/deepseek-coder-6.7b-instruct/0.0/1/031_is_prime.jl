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
    if n < 2
        return false
    end
    if n == 2 || n == 3
        return true
    end
    if n % 2 == 0 || n % 3 == 0
        return false
    end
    i = 5
    w = 2
    while i * i <= n
        if n % i == 0
            return false
        end
        i += w
        w = 6 - w
    end
    return true
end

# Test cases
println(is_prime(6))
println(is_prime(101))
println(is_prime(11))
println(is_prime(13441))
println(is_prime(61))
println(is_prime(4))
println(is_prime(1))

