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
    end
    for i in 2:floor(Int, sqrt(x))
        if x % i == 0
            k = 0
            while x % i == 0
                x = x ÷ i
                k += 1
            end
            if x == 1 && k % n == 0
                return true
            end
        end
    end
    return false
end
