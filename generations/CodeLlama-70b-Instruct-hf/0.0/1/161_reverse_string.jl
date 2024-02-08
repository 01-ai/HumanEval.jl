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
    # Check if the string contains any letters
    if any(isletter, s)
        # Reverse the case of letters
        result = join([isletter(c) ? uppercase(c) : lowercase(c) for c in s])
    else
        # Reverse the string
        result = reverse(s)
    end
    return result
end
