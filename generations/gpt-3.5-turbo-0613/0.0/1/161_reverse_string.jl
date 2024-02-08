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
    reversed = ""
    for c in s
        if isletter(c)
            if islowercase(c)
                reversed *= uppercase(c)
            else
                reversed *= lowercase(c)
            end
        else
            reversed *= c
        end
    end
    return reverse(reversed)
end
