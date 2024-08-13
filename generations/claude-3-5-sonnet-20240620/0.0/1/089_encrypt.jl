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
    function shift_char(c::Char)
        if !isletter(c)
            return c
        end
        base = islowercase(c) ? 'a' : 'A'
        shifted = (((c - base) + 4) % 26) + base
        return Char(shifted)
    end
    
    return join(shift_char.(collect(s)))
end
