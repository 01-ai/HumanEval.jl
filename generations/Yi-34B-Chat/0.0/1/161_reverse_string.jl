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
    # Initialize an empty string to store the reversed string
    reversed_string = ""

    # Loop through the original string
    for c in s
        # If the character is a letter, reverse its case
        if isletter(c)
            # Use uppercase or lowercase depending on the original case
            c = isupper(c) ? lowercase(c) : uppercase(c)
        end

        # Append the character to the reversed string
        reversed_string *= c
    end

    # If the original string contains no letters, reverse it
    if !all(isletter, s)
        reversed_string = reverse(s)
    end

    # Return the reversed string
    return reversed_string
end
