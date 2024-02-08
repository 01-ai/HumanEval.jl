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
    return powermod(2, n, p)
end

function powermod(a::Int, b::Int, m::Int)::Int
    result = 1
    while b > 0
        if b % 2 == 1
            result = (result * a) % m
        end
        a = (a * a) % m
        b = b � 2
    end
    return result
end
