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
    if n == 1
        return x == 1
    end
    if x == 1
        return true
    end
    if x < 0 && n < 0
        return false
    end
    if x < 0 && n % 2 == 0
        return false
    end
    if x < 0
        x = -x
    end
    while x % n == 0
        x = x / n
    end
    return x == 1
end
