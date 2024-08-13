"""
    modp(n::Int, p::Int)::Int

Return 2^n modulo p (be aware of numerics).

# Examples

```jldoctest
julia> modp(3, 5)
3

julia> modp(1101, 101)
2

julia> modp(0, 101)
1

julia> modp(3, 11)
8

julia> modp(100, 101)
1
```
"""
function modp(n::Int, p::Int)::Int
    if n == 0
        return 1
    end
    
    result = 1
    base = 2 % p
    
    while n > 0
        if n & 1 == 1
            result = (result * base) % p
        end
        base = (base * base) % p
        n >>= 1
    end
    
    return result
end
println(modp(3, 5))    # Output: 3
println(modp(1101, 101))    # Output: 2
println(modp(0, 101))    # Output: 1
println(modp(3, 11))    # Output: 8
println(modp(100, 101))    # Output: 1
