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
    len_a = length(a)
    len_b = length(b)
    
    # Concatenate 'b' with itself to cover all rotations
    b_concat = b * b
    
    # Check if 'b' or any of its rotations is a substring in 'a'
    for i in 1:(len_b)
        if occursin(b_concat[i:i+len_b-1], a)
            return true
        end
    end
    
    return false
end