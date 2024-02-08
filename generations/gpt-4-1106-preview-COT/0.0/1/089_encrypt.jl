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
            # Calculate the new character by shifting down by 4 places
            offset = isuppercase(c) ? 'A' : 'a'
            new_char = Char(mod(Int(c) - Int(offset) + 4, 26) + Int(offset))
            encrypted *= new_char
        else
            # If it's not a letter, just append it as is
            encrypted *= c
        end
    end
    return encrypted
end
println(encrypt("hi"))  # Should print "lm"
println(encrypt("asdfghjkl"))  # Should print "ewhjklnop"
println(encrypt("gf"))  # Should print "kj"
println(encrypt("et"))  # Should print "ix"
