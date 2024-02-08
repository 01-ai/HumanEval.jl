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

# Step 1: Helper function to check if a number is prime
function is_prime(n::Int)::Bool
    if n < 2
        return false
    end
    for i in 2:sqrt(n)
        if n % i == 0
            return false
        end
    end
    return true
end

# Step 2: Main function to return x or y based on whether n is prime
function x_or_y(n::Int, x::Int, y::Int)::Int
    if is_prime(n)
        return x
    else
        return y
    end
end
