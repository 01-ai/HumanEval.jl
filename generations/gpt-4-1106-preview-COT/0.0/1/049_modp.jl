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
    # Step 1: Handle the case when p is 1
    if p == 1
        return 0
    end
    
    # Step 2: Initialize the result
    result = 1
    
    # Step 3: Loop n times to calculate 2^n mod p
    for i in 1:n
        result = (result * 2) % p
    end
    
    # Step 4: Return the result
    return result
end
println(modp(3, 5))   # Expected output: 3
println(modp(1101, 101))  # Expected output: 2
println(modp(0, 101))  # Expected output: 1
println(modp(3, 11))  # Expected output: 8
println(modp(100, 101))  # Expected output: 1
