"""
    is_simple_power(x::Number, n::Number)::Bool

Your task is to write a function that returns `true` if a number `x` is a simple
power of `n` and `false` in other cases. `x` is a simple power of `n` if n ^
int = x.

# Examples:

```jldoctest
julia> is_simple_power(1, 4)
true

julia> is_simple_power(2, 2)
true

julia> is_simple_power(8, 2)
true

julia> is_simple_power(3, 2)
false

julia> is_simple_power(3, 1)
false

julia> is_simple_power(5, 3)
false
```
"""


function is_simple_power(x::Number, n::Number)::Bool
    if x == 1
        return true
    elseif n == 1
        return false
    else
        return x ≈ n^(round(Int, log(n, x)))
    end
end

# Test cases
println(is_simple_power(1, 4)) # true
println(is_simple_power(2, 2)) # true
println(is_simple_power(8, 2)) # true
println(is_simple_power(3, 2)) # false
println(is_simple_power(3, 1)) # false
println(is_simple_power(5, 3)) # false 
