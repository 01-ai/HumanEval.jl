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
    # Special case: x is 1
    if x == 1
        return true
    end
    
    # Special case: n is 1
    if n == 1
        return x == 1
    end
    
    # Calculate the logarithm base n of x
    k = log(x) / log(n)
    
    # Check if k is an integer
    return k == round(k)
end
println(is_simple_power(1, 4))  # true
println(is_simple_power(2, 2))  # true
println(is_simple_power(8, 2))  # true
println(is_simple_power(3, 2))  # false
println(is_simple_power(3, 1))  # false
println(is_simple_power(5, 3))  # false
