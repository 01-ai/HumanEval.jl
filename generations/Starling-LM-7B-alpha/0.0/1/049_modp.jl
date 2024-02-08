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
function modp(n::Int, p::Int)
    if n < 0
        return modp(-n, p)
    end

    if n == 0
        return 1
    end

    if n == 1
        return 2
    end

    if p == 1
        return 0
    end

    if p == 2
        if n % 2 == 0
            return 1
        else
            return 2
        end
    end

    # Use the binary exponentiation method to calculate 2^n modulo p
    result = 1
    while n > 0
        if n % 2 == 1
            result = (result * 2) % p
        end
        n = div(n, 2)
    end

    return result
end
