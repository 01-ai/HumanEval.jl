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
    # Step 1: Calculate the length of the string
    len = length(s)
    
    # Step 2: Define a function to check if a number is prime
    function is_prime(n::Int)::Bool
        if n <= 1
            return false
        end
        for i in 2:isqrt(n)
            if n % i == 0
                return false
            end
        end
        return true
    end
    
    # Step 3 & 4: Check if the length of the string is prime and return the result
    return is_prime(len)
end

# Example usage
println(prime_length("Hello"))  # true
println(prime_length("abcdcba"))  # true
println(prime_length("kittens"))  # true
println(prime_length("orange"))  # false
