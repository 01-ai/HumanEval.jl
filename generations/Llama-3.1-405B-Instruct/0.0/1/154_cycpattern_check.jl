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
    """
    Check if the second word or any of its rotations is a substring in the first word.

    Parameters:
    a (String): The first word.
    b (String): The second word.

    Returns:
    Bool: True if the second word or any of its rotations is a substring in the first word, False otherwise.
    """
    # Concatenate the second word with itself to generate all possible rotations
    double_b = b * b
    
    # Check if any rotation of the second word is a substring of the first word
    for i in 1:length(b)
        # Extract a rotation of the second word
        rotation = double_b[i:i+length(b)-1]
        
        # Check if the rotation is a substring of the first word
        if occursin(rotation, a)
            return true
        end
    end
    
    # If no rotation is found, return False
    return false
end
