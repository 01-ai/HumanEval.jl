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
        return true  # 1 is a simple power of any number
    elseif n == 1 || x < 1 || n < 1
        return false  # n^anything = 1 only when n = 1, and we handled x = 1 case above
    end

    # Convert to floating-point for the logarithm operation
    log_x = log(abs(x))
    log_n = log(abs(n))

    # Calculate the potential exponent
    potential_exponent = log_x / log_n

    # Check if the potential exponent is very close to an integer
    return isapprox(round(potential_exponent), potential_exponent, atol=1e-10)
end
