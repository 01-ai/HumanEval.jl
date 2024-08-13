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
    # Helper function to determine if a number is prime
    function is_prime(n::Int)::Bool
        if n <= 1
            return false
        elseif n <= 3
            return true
        elseif n % 2 == 0 || n % 3 == 0
            return false
        end
        i = 5
        while i * i <= n
            if n % i == 0 || n % (i + 2) == 0
                return false
            end
            i += 6
        end
        return true
    end

    # Get the length of the string
    len = length(s)

    # Check if the length is a prime number
    return is_prime(len)
end
