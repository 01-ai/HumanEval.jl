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
    function is_prime(num::Int)::Bool
        if num <= 1
            return false
        end
        for i in 2:sqrt(num)
            if num % i == 0
                return false
            end
        end
        return true
    end

    # Use the helper function to determine the return value
    return is_prime(n) ? x : y
end
