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
    # Check if b is already a substring of a
    if occursin(b, a)
        return true
    end

    # Check all rotations of b to see if any is a substring of a
    len_b = length(b)
    for i in 1:len_b
        rotated_b = b[i:end] * b[1:i-1]
        if occursin(rotated_b, a)
            return true
        end
    end

    # If none of the rotations is a substring, return false
    return false
end
println(cycpattern_check("abcd", "abd")) # false
println(cycpattern_check("hello", "ell")) # true
println(cycpattern_check("whassup", "psus")) # false
println(cycpattern_check("abab", "baa")) # true
println(cycpattern_check("efef", "eeff")) # false
println(cycpattern_check("himenss", "simen")) # true
