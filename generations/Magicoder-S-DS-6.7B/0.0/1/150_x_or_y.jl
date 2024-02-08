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
function x_or_y(n::Int, x::Int, y::Int)::Int
    if n <= 1
        return y
    end
    for i in 2:isqrt(n)
        if n % i == 0
            return y
        end
    end
    return x
end

# Test cases
println(x_or_y(7, 34, 12)) # Expected output: 34
println(x_or_y(15, 8, 5)) # Expected output: 5
