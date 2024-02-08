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
    elseif n == 2
        return true
    elseif n % 2 == 0
        return false
    end

    for i in 3:2:sqrt(n)
        if n % i == 0
            return false
        end
    end

    return true
end
