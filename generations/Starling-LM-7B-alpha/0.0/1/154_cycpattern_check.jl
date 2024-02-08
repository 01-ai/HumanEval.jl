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
    # Check if the second word is a substring of the first word
    if occursin(b, a)
        return true
    end

    # Check if any rotation of the second word is a substring of the first word
    rotations = [b[i:end-i] for i in 1:length(b)]
    for rotation in rotations
        if occursin(rotation, a)
            return true
        end
    end

    return false
end
