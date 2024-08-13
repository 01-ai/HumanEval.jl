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
    # Initialize result
    result = 1
    base = 2
    
    # Update base if it is more than or equal to p
    base = base % p
    
    while n > 0
        # If n is odd, multiply base with result
        if n % 2 == 1
            result = (result * base) % p
        end
        
        # n must be even now
        n = n >> 1  # equivalent to n //= 2
        base = (base * base) % p
    end
    
    return result
end
println(modp(3, 5))    # Output: 3
println(modp(1101, 101)) # Output: 2
println(modp(0, 101))  # Output: 1
println(modp(3, 11))   # Output: 8
println(modp(100, 101)) # Output: 1
