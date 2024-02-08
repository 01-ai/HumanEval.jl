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
    encrypted = ""
    for c in s
        if islowercase(c)
            encrypted *= Char(Int('a') + ((Int(c) - Int('a') + 2*2) % 26))
        elseif isuppercase(c)
            encrypted *= Char(Int('A') + ((Int(c) - Int('A') + 2*2) % 26))
        else
            encrypted *= c
        end
    end
    return encrypted
end
