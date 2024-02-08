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
    reversed_string = ""
    for i in eachindex(s)
        if isletter(s[i])
            if isuppercase(s[i])
                reversed_string *= lowercase(s[i])
            else
                reversed_string *= uppercase(s[i])
            end
        else
            reversed_string *= s[i]
        end
    end
    return reverse(reversed_string)
end
