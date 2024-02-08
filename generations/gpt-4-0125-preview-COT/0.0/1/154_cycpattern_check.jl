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
    # Step 1: Check if b is already a substring of a
    if occursin(b, a)
        return true
    end

    # Step 2 & 3: Generate all rotations of b and check if any is a substring of a
    bb = b * b  # Concatenate b with itself to cover all rotations
    len_b = length(b)
    for i in 1:len_b
        rotation = bb[i:i+len_b-1]  # Extract rotation of length equal to b
        if occursin(rotation, a)
            return true
        end
    end

    # Step 4: Return false if no rotation of b is a substring of a
    return false
end
