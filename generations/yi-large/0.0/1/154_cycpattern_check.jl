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
function cycpattern_check(a::String, b::String)::Bool
    # Check if the length of b is greater than a, if so, return false immediately
    if length(b) > length(a)
        return false
    end
    
    # Generate all rotations of b
    rotations = [b[i:end] * b[1:i-1] for i in 1:length(b)]
    
    # Check if any of the rotations is a substring of a
    for rotation in rotations
        if occursin(rotation, a)
            return true
        end
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
