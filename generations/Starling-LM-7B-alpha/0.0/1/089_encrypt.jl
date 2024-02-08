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
    alphabet = "abcdefghijklmnopqrstuvwxyz"
    encrypted_alphabet = alphabet[2:end] * alphabet[1:end-2]

    encrypted_str = ""
    for c in s
        index = findfirst(c -> c == c, alphabet)
        encrypted_str *= encrypted_alphabet[index]
    end
    return encrypted_str
end
