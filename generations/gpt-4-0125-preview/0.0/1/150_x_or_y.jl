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
    is_prime(n::Int)::Bool

Check if a number is prime.

# Arguments
- `n`: An integer to check for primality.

# Returns
- `true` if `n` is prime, `false` otherwise.
"""
function is_prime(n::Int)::Bool
    if n <= 1
        return false
    end
    for i in 2:sqrt(n)
        if n % i == 0
            return false
        end
    end
    return true
end

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
    if is_prime(n)
        return x
    else
        return y
    end
end