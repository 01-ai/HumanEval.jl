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
    # Step 1: Check if the length of the string is less than 3
    if length(s) < 3
        return false
    end
    
    # Step 2: Iterate through the string
    for i in 1:length(s)-2
        # Step 3: Check for distinct characters in groups of three
        if s[i] == s[i+1] || s[i] == s[i+2] || s[i+1] == s[i+2]
            return false
        end
    end
    
    # Step 4: Return true if all checks pass
    return true
end
