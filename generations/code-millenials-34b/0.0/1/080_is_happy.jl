"""
is_happy(s::String)::Bool

You are given a string s. Your task is to check if the string is happy or not. A
string is happy if its length is at least 3 and every 3 consecutive letters are
distinct.

# Examples

```jldoctest
julia> is_happy("a")
false

julia> is_happy("aa")
false

julia> is_happy("abcd")
true

julia> is_happy("aabb")
false

julia> is_happy("adb")
true

julia> is_happy("xyy")
false
```
"""


function is_happy(s::String)::Bool
    length(s) < 3 && return false
    for i in 1:length(s)-2
        if s[i] == s[i+1] || s[i] == s[i+2] || s[i+1] == s[i+2]
            return false
        end
    end
    return true
end

# Test cases
println(is_happy("a")) # Expected output: false
println(is_happy("aa")) # Expected output: false
println(is_happy("abcd")) # Expected output: true
println(is_happy("aabb")) # Expected output: false
println(is_happy("adb")) # Expected output: true
println(is_happy("xyy")) # Expected output: false
