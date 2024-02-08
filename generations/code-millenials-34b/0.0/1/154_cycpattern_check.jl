"""
    cycpattern_check(a::String , b::String)::Bool

You are given 2 words. You need to return `true` if the second word or any of
its rotations is a substring in the first word.

# Example

```jldoctest
julia> cycpattern_check("abcd", "abd")
false

julia> cycpattern_check("hello", "ell")
true

julia> cycpattern_check("whassup", "psus")
false

julia> cycpattern_check("abab", "baa")
true

julia> cycpattern_check("efef", "eeff")
false

julia> cycpattern_check("himenss", "simen")
true
```
"""


function cycpattern_check(a::String , b::String)::Bool
    n = length(b)
    for i in 1:n
        rotated = b[i:n] * b[1:i-1]
        if occursin(rotated, a)
            return true
        end
    end
    return false
end

# Test cases
println(cycpattern_check("abcd", "abd")) # Expected output: false
println(cycpattern_check("hello", "ell")) # Expected output: true
println(cycpattern_check("whassup", "psus")) # Expected output: false
println(cycpattern_check("abab", "baa")) # Expected output: true
println(cycpattern_check("efef", "eeff")) # Expected output: false
println(cycpattern_check("himenss", "simen")) # Expected output: true

