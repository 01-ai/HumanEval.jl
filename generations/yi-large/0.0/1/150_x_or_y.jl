"""
    x_or_y(n::Int, x::Int, y::Int)::Int

A simple program which should return the value of x if n is a prime number and
should return the value of y otherwise.

# Examples

```jldoctest
julia> x_or_y(7, 34, 12)
34

julia> x_or_y(15, 8, 5)
5
```
"""
function isprime(n::Int)::Bool
    if n <= 1
        return false
    end
    for i in 2:floor(Int, sqrt(n))
        if n % i == 0
            return false
        end
    end
    return true
end

function x_or_y(n::Int, x::Int, y::Int)::Int
    if isprime(n)
        return x
    else
        return y
    end
end

# Test cases
println(x_or_y(7, 34, 12)) # Expected: 34
println(x_or_y(15, 8, 5))   # Expected: 5
