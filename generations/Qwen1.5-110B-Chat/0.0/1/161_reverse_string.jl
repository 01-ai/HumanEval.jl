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
    hasletters = false
    for c in s
        if 'a' ≤ c ≤ 'z' || 'A' ≤ c ≤ 'Z'
            hasletters = true
            break
        end
    end

    if hasletters
        return join([c isa AbstractChar && ('a' ≤ c ≤ 'z' ? uppercase(c) : lowercase(c)) for c in s])
    else
        return reverse(s)
    end
end
