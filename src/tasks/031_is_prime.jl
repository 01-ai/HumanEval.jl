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
    n < 2 && return false
    n == 2 && return true
    for k = 2:ceil(Int, sqrt(n))
        if n % k == 0
            return false
        end
    end
    return true
end