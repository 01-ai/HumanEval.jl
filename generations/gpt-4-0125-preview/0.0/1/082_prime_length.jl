"""
    prime_length(s::String)::Bool

Write a function that takes a `s` and returns `true` if `s` length is a prime
number or `false` otherwise.

# Examples

```jldoctest
julia> prime_length("Hello")
true

julia> prime_length("abcdcba")
true

julia> prime_length("kittens")
true

julia> prime_length("orange")
false
```
"""

"""
    is_prime(n::Int)::Bool

Determine if `n` is a prime number.

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
    prime_length(s::String)::Bool

Write a function that takes a `s` and returns `true` if `s` length is a prime
number or `false` otherwise.

# Examples

```jldoctest
julia> prime_length("Hello")
true

julia> prime_length("abcdcba")
true

julia> prime_length("kittens")
true

julia> prime_length("orange")
false
```
"""
function prime_length(s::String)::Bool
    return is_prime(length(s))
end
