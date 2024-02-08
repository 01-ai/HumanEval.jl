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
    # Step 1: Check if the length of the second word is less than or equal to the length of the first word
    if length(b) > length(a)
        return false
    end

    # Step 2: Generate all rotations of the second word
    rotations = [b[i:end]*b[1:i-1] for i in 1:length(b)]

    # Step 3: Check if any of the rotations is a substring of the first word
    for rotation in rotations
        if occursin(rotation, a)
            return true
        end
    end

    # If none of the rotations is a substring of the first word, return false
    return false
end
