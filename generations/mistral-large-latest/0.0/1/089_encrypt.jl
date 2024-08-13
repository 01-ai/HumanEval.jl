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
        if 'a' <= c <= 'z'
            encrypted_char = Char(mod(Int(c) + 2 * 2 - Int('a'), 26) + Int('a'))
            encrypted_string *= encrypted_char
        elseif 'A' <= c <= 'Z'
            encrypted_char = Char(mod(Int(c) + 2 * 2 - Int('A'), 26) + Int('A'))
            encrypted_string *= encrypted_char
        else
            encrypted_string *= c
        end
    end
    return encrypted_string
end
