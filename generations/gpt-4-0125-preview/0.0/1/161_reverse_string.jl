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
    contains_letters = any(isletter, s)
    
    # If no letters are present, reverse the string
    if !contains_letters
        return reverse(s)
    end
    
    # Function to reverse the case of a letter
    function reverse_case(c::Char)::Char
        if islower(c)
            return uppercase(c)
        elseif isupper(c)
            return lowercase(c)
        else
            return c
        end
    end
    
    # Apply reverse_case to each character and construct the new string
    return join(map(reverse_case, s))
end
