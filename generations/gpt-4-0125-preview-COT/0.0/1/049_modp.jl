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
    # Input validation is implicitly handled by type annotations in function definition
    
    # Base case
    if n == 0
        return 1
    end
    
    # Initialize result
    result = 1
    base = 2
    
    # Modular exponentiation
    while n > 0
        # If n is odd, multiply base with result
        if n % 2 == 1
            result = (result * base) % p
        end
        # n is made even
        n = div(n, 2)
        # Square the base
        base = (base * base) % p
    end
    
    return result
end
