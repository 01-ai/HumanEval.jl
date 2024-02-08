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
    # Step 1: Check if the string is too short to be happy
    if length(s) < 3
        return false
    end
    
    # Step 2: Iterate through the string
    for i in 1:(length(s) - 2)
        # Step 3: Check if three consecutive characters are distinct
        if s[i] == s[i+1] || s[i+1] == s[i+2] || s[i] == s[i+2]
            # Step 4: If not, the string is not happy
            return false
        end
    end
    
    # Step 5: If the loop completes, the string is happy
    return true
end
