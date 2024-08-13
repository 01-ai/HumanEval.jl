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
    # Check if the length of b is greater than a, return false immediately
    if length(b) > length(a)
        return false
    end

    # Concatenate b with itself to check all rotations
    rotated_b = b * b

    # Check if any rotation of b is a substring of a
    for i in 1:length(b)
        if occursin(rotated_b[i:i+length(b)-1], a)
            return true
        end
    end

    return false
end
