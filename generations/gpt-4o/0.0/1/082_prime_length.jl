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

# Helper function to check if a number is prime
function is_prime(n::Int)::Bool
    if n <= 1
        return false
    elseif n == 2
        return true
    elseif n % 2 == 0
        return false
    end
    for i in 3:2:sqrt(n)
        if n % i == 0
            return false
        end
    end
    return true
end

# Main function to check if the length of the string is prime
function prime_length(s::String)::Bool
    len = length(s)
    return is_prime(len)
end

# Examples
println(prime_length("Hello"))    # true
println(prime_length("abcdcba"))  # true
println(prime_length("kittens"))  # true
println(prime_length("orange"))   # false