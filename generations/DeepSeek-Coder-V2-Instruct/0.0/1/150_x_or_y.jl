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
    function is_prime(num::Int)::Bool
        if num <= 1
            return false
        elseif num == 2
            return true
        elseif num % 2 == 0
            return false
        end
        for i in 3:2:sqrt(num)
            if num % i == 0
                return false
            end
        end
        return true
    end

    return is_prime(n) ? x : y
end
