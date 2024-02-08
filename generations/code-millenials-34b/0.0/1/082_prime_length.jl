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
    length_s = length(s)
    if length_s == 1 || length_s == 0
        return false
    end
    for i in 2:length_s-1
        if length_s % i == 0
            return false
        end
    end
    return true
end

# Test cases
@assert prime_length("Hello") == true
@assert prime_length("abcdcba") == true
@assert prime_length("kittens") == true
@assert prime_length("orange") == false
