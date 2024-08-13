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
    # If x is 1, it is a power of any number n
    if x == 1
        return true
    end
    
    # If n is 1 and x is not 1, x cannot be a power of 1
    if n == 1
        return false
    end
    
    # Calculate the logarithm of x to the base n
    # log(n, x) should be an integer if x is a simple power of n
    log_n_x = log(x) / log(n)
    
    # Check if log_n_x is an integer
    return isapprox(log_n_x, round(log_n_x))
end
