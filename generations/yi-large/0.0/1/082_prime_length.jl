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
    # First, calculate the length of the string
    length_s = length(s)

    # A number is prime if it is greater than one and has no divisors other than 1 and itself.
    if length_s <= 1
        return false
    end

    # Check for factors from 2 to length_s - 1
    for i in 2:(length_s - 1)
        if length_s % i == 0
            return false
        end
    end

    # If no divisors were found, the length is prime
    return true
end

# Test cases
println(prime_length("Hello")) # true
println(prime_length("abcdcba")) # true
println(prime_length("kittens")) # true
println(prime_length("orange")) # false
