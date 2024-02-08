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
    for char in s
        if 'a' <= char <= 'z'
            encrypted_string *= string(char + 4)
        elseif 'A' <= char <= 'Z'
            encrypted_string *= string(char + 4)
        else
            encrypted_string *= char
        end
    end
    return encrypted_string
end
