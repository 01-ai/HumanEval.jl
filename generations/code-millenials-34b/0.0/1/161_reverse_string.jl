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
    letters = isletter.(s)
    if any(letters)
        return join([isletter(s[i]) ? (islower(s[i]) ? uppercase(s[i]) : lowercase(s[i])) : s[i] for i in 1:length(s)])
    else
        return reverse(s)
    end
end

# Test cases
println(reverse_string("1234"))  # Output: "4321"
println(reverse_string("ab"))  # Output: "AB"
println(reverse_string("#a@C"))  # Output: "#A@c"

