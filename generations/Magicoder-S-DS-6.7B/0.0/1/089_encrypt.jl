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
        if islowercase(c)
            encrypted_string *= Char(Int('a') + ((Int(c) - Int('a') + 2*2) % 26))
        elseif isuppercase(c)
            encrypted_string *= Char(Int('A') + ((Int(c) - Int('A') + 2*2) % 26))
        else
            encrypted_string *= c
        end
    end
    return encrypted_string
end
