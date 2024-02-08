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
    # Initialize result to 1
    result = 1

    # Loop through binary representation of n
    while n > 0
        # If the least significant bit is 1, multiply result by p
        if n & 1 == 1
            result = (result * p) % p
        end

        # Shift n to the right and reduce p if necessary
        n >>= 1
        p = (p * p) % p
    end

    return result
end
