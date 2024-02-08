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
    # Initialize result to 1 (as 2^0 mod p is always 1)
    result = 1
    
    # Base to be exponentiated, which is 2 in this case
    base = 2
    
    # Update n to be within 0 <= n < p-1 using modulo, if p > 1
    n = p > 1 ? n % (p - 1) : n
    
    # Loop to calculate (base^n) % p using the binary exponentiation method
    while n > 0
        # If n is odd, multiply base with result
        if n % 2 == 1
            result = (result * base) % p
        end
        
        # Square the base and reduce it modulo p
        base = (base * base) % p
        
        # Reduce n by half
        n >>= 1
    end
    
    return result
end
