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
    # Helper function to check if a number is prime
    function is_prime(k::Int)::Bool
        if k <= 1
            return false
        end
        for i in 2:sqrt(k)
            if k % i == 0
                return false
            end
        end
        return true
    end

    # Return x if n is prime, otherwise return y
    return is_prime(n) ? x : y
end
