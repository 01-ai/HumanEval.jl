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
        if isletter(c)
            # Shift the character down by two multiplied to two places
            encrypted *= Char(Int(c) + 2*2)
        else
            encrypted *= c
        end
    end
    return encrypted
end
