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

# Import the isprime function from the Primes package
import Primes: isprime

"""
    prime_length(s::String)::Bool

    Returns true if the length of the string `s` is a prime number, false otherwise.
"""
function prime_length(s::String)::Bool
    # Calculate the length of the string
    len = length(s)
    # Check if the length is a prime number
    return isprime(len)
end
