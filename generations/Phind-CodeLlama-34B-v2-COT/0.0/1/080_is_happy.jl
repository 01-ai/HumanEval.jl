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
    # Check if the length of the string is less than 3
    length(s) < 3 && return false

    # Initialize variables to store the previous and current characters
    prev = s[1]
    curr = s[2]

    # Iterate over the string
    for i in 3:length(s)
        # Check if the current character is equal to prev or curr
        if s[i] == prev || s[i] == curr
            return false
        end

        # Update prev and curr to the next two characters
        prev = curr
        curr = s[i]
    end

    # If we have iterated over the entire string, return true
    return true
end
