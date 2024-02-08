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
    # Calculate 2^n using the power_by_squaring method
    two_to_n = Base.power_by_squaring(2, n)

    # Calculate 2^n modulo p using the mod method
    result = Base.mod(two_to_n, p)

    # Return the result
    return result
end
@assert modp(3, 5) == 3
@assert modp(1101, 101) == 2
@assert modp(0, 101) == 1
@assert modp(3, 11) == 8
@assert modp(100, 101) == 1
