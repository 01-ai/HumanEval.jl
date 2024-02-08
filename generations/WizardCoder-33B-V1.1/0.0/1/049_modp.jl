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

# Test cases
println(modp(3, 5)) # 3
println(modp(1101, 101)) # 2
println(modp(0, 101)) # 1
println(modp(3, 11)) # 8
println(modp(100, 101)) # 1 
