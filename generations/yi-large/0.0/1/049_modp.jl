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
    elseif n == 1
        return 2 % p
    else
        # Use exponentiation by squaring to avoid overflow
        result = 1
        base = 2
        while n > 0
            if n % 2 == 1
                result = (result * base) % p
            end
            base = (base * base) % p
            n = div(n, 2)
        end
        return result
    end
end

# Test cases
println(modp(3, 5))    # Expected: 3
println(modp(1101, 101)) # Expected: 2
println(modp(0, 101))  # Expected: 1
println(modp(3, 11))   # Expected: 8
println(modp(100, 101)) # Expected: 1
