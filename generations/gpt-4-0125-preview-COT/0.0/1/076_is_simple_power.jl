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
    # Handle special cases
    if x == 1
        return true
    elseif n == 1
        return x == 1
    elseif x == 0
        return n > 1
    end

    # Calculate the potential power using logarithm
    potential_power = log(x) / log(n)

    # Check if the potential power is an integer
    return potential_power == floor(potential_power)
end
