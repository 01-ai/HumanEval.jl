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
    if !any(isletter, s)
        return reverse(s)
    end
    return map(c -> isletter(c) ? (isupper(c) ? lowercase(c) : uppercase(c)) : c, s)
end
println(reverse_string("1234"))  # "4321"
println(reverse_string("ab"))  # "BA"
println(reverse_string("#a@C"))  # "#A@C"
