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
 function prime_length(s::String)
    length = length(s)
    if length == 1 || length == 2
        return true
    end

    for i in 2:sqrt(Int, length)
        if length % i == 0
            return false
        end
    end

    return true
end
