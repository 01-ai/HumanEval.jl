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
    for char in s
        if isletter(char)
            shift = 2 * 2
            base = isuppercase(char) ? 'A' : 'a'
            encrypted_char = base + (char - base + shift) % 26
            encrypted *= encrypted_char
        else
            encrypted *= char
        end
    end
    return encrypted
end
