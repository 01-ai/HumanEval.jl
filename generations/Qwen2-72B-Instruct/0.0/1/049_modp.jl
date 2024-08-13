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
    return mod(2^n, p)
end
function modp(n::Int, p::Int)::Int
    result = 1
    base = 2
    while n > 0
        if n % 2 == 1
            result = mod(result * base, p)
        end
        base = mod(base * base, p)
        n = div(n, 2)
    end
    return result
end
