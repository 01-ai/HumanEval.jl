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
    n, m = length(a), length(b)
    if m > n
        return false
    end
    
    function is_substring(s1::String, s2::String)
        occursin(s2, s1)
    end
    
    for i in 1:m
        if is_substring(a, b[i:end] * b[1:i-1])
            return true
        end
    end
    return false
end
