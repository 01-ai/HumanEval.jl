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
    # Step 1: Early return if `b` is longer than `a`
    if length(b) > length(a)
        return false
    end
    
    # Step 2: Concatenate `a` with itself
    double_a = a * a
    
    # Step 3: Check if `b` is a substring of the concatenated string
    return occursin(b, double_a)
end
