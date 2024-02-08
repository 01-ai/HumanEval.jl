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
    n = length(s)
    if n == 1
        return false
    elseif n == 2
        return true
    else
        for i = 2:n-1
            if n % i == 0
                return false
            end
        end
        return true
    end
end

# Testing the function with the provided examples
println(prime_length("Hello")) # true
println(prime_length("abcdcba")) # true
println(prime_length("kittens")) # true
println(prime_length("orange")) # false
