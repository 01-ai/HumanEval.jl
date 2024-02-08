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
    # If n is 1, then x must be 1 to be a simple power of n
    if n == 1
        return x == 1
    end

    # If x is 0 or 1, it is a simple power of any n
    if x == 0 || x == 1
        return true
    end

    # If n is 0, x must be 0 to be a simple power of n
    if n == 0
        return x == 0
    end

    # Calculate the integer power that would give x if it exists
    power = log(x) / log(n)

    # Check if the calculated power is an integer and if n raised to that power equals x
    return isinteger(power) && n^round(Int, power) == x
end
