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
    # Check if n is a prime number
    if n <= 1
        return y
    elseif n <= 3
        return x
    elseif n % 2 == 0 || n % 3 == 0
        return y
    end

    i = 5
    while i * i <= n
        if n % i == 0 || n % (i + 2) == 0
            return y
        end
        i += 6
    end

    # If n is prime, return x
    return x
end
