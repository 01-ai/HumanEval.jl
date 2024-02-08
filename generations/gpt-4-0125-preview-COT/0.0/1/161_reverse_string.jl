"""
    reverse_string(s::String)::String

You are given a string `s`. If `s[i]` is a letter, reverse its case from lower
to upper or vise versa, otherwise keep it as it is.  If the string contains no
letters, reverse the string. The function should return the resulted string.

# Examples

```jldoctest
julia> reverse_string("1234")
"4321"

julia> reverse_string("ab")
"AB"

julia> reverse_string("#a@C")
"#A@c"
```
"""
function reverse_string(s::String)::String
    # Step 1: Check for letters
    contains_letters = any(isletter, s)
    
    # Step 2: Reverse case or string
    if contains_letters
        # Reverse case for letters, keep others as is
        return join([isletter(c) ? (islower(c) ? uppercase(c) : lowercase(c)) : c for c in s])
    else
        # Reverse the string if no letters are present
        return reverse(s)
    end
end

# Examples
println(reverse_string("1234"))  # Expected: "4321"
println(reverse_string("ab"))    # Expected: "AB"
println(reverse_string("#a@C"))  # Expected: "#A@c"
