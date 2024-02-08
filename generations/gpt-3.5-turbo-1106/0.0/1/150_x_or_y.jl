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
    is_prime = true
    if n < 2
        is_prime = false
    else
        for i in 2:isqrt(n)
            if n % i == 0
                is_prime = false
                break
            end
        end
    end
    return is_prime ? x : y
end
