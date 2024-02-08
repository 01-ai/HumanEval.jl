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
    # Check if x is a simple power of n
    # Simple power means n^int = x
    # If x is an integer, then it's a simple power of 1
    if x == 1 || n == 1
        return true
    end

    # Check if x is a power of n
    if x != n^(floor(Int, log(x, n)) + 1)
        return false
    end

    # If we reach this point, x is a power of n
    return true
end
