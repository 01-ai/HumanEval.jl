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
    # Check if b or any of its rotations is a substring of a
    n = length(b)
    # Create a string that is a doubled version of a to handle rotations
    doubled_a = a * a
    # Check all possible rotations of b
    for i in 0:(n-1)
        # Generate the rotated version of b
        rotated_b = b[(i+1):end] * b[1:i]
        # Check if this rotation is a substring of the original string a
        if occursin(rotated_b, doubled_a)
            return true
        end
    end
    return false
end
