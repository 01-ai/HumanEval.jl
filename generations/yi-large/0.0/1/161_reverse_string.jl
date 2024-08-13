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
    if all(!(c in ['a':'z' 'A':'Z']) for c in s)
        return reverse(s)
    else
        return join([c in ['a':'z'] ? uppercase(c) :
                     c in ['A':'Z'] ? lowercase(c) : c for c in s])
    end
end

# Test cases
println(reverse_string("1234")) # Expected: "4321"
println(reverse_string("ab"))    # Expected: "AB"
println(reverse_string("#a@C"))  # Expected: "#A@c"
