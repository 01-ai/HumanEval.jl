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
function isprime(n::Int)
    if n < 2
        return false
    elseif n < 4
        return true
    elseif n % 2 == 0
        return false
    else
        for d in 3:2:isqrt(n)
            if n % d == 0
                return false
            end
        end
        return true
    end
end

function prime_length(s::String)::Bool
    length_s = length(s)
    return isprime(length_s)
end
