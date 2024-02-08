"""
    encrypt(s::String)

Create a function `encrypt` that takes a string as an argument and returns a
string encrypted with the alphabet being rotated. The alphabet should be rotated
in a manner such that the letters shift down by two multiplied to two places.

# Example

```jldoctest
julia> encrypt("hi")
"lm"

julia> encrypt("asdfghjkl")
"ewhjklnop"

julia> encrypt("gf")
"kj"

julia> encrypt("et")
"ix"
```
"""


function encrypt(s::String)
    encrypted_string = ""
    for c in s
        if islower(c)
            encrypted_string *= Char(((c - 'a' + 4) % 26) + 'a')
        elseif isupper(c)
            encrypted_string *= Char(((c - 'A' + 4) % 26) + 'A')
        else
            encrypted_string *= c
        end
    end
    return encrypted_string
end
