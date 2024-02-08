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
    for i in 1:length(b)
        if occursin(b, a)
            return true
        end
        b = b[end:end] * b[1:end-1]
    end
    return false
end

# Test cases
println(cycpattern_check("abcd", "abd")) # false
println(cycpattern_check("hello", "ell")) # true
println(cycpattern_check("whassup", "psus")) # false
println(cycpattern_check("abab", "baa")) # true
println(cycpattern_check("efef", "eeff")) # false
println(cycpattern_check("himenss", "simen")) # true 
