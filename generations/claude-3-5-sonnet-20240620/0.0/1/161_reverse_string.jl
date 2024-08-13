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
    has_letters = any(isletter, s)
    
    # If there are no letters, simply reverse the entire string
    if !has_letters
        return reverse(s)
    end
    
    # If there are letters, process each character
    return join(map(s) do char
        if isletter(char)
            # If it's a letter, swap its case
            if isuppercase(char)
                return lowercase(char)
            else
                return uppercase(char)
            end
        else
            # If it's not a letter, keep it as is
            return char
        end
    end)
end
println(reverse_string("1234"))  # Output: 4321
println(reverse_string("ab"))    # Output: AB
println(reverse_string("#a@C"))  # Output: #A@c
