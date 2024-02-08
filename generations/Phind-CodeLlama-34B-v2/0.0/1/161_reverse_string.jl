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
    if isempty(s)
        return s
    end

    res = Char[]
    for c in s
        if isletter(c)
            push!(res, islowercase(c) ? uppercase(c) : lowercase(c))
        else
            push!(res, c)
        end
    end

    return join(reverse(res))
end

# Test the function with the provided examples
@assert reverse_string("1234") == "4321"
@assert reverse_string("ab") == "AB"
@assert reverse_string("#a@C") == "#A@c"
