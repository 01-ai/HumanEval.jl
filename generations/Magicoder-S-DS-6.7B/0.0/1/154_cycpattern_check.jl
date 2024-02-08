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
    # Check if b is a substring of a
    if occursin(b, a)
        return true
    end

    # Check if any rotation of b is a substring of a
    for i in 1:length(b)
        rotated_b = string(b[i+1:end], b[1:i])
        if occursin(rotated_b, a)
            return true
        end
    end

    # If no rotation of b is a substring of a, return false
    return false
end
