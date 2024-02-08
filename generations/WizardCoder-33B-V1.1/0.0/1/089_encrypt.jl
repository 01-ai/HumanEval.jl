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
    alphabet = 'a':'z'
    encrypted_alphabet = [alphabet[mod1(i+2*2, 26)] for i in 1:26]
    mapping = Dict(zip(alphabet, encrypted_alphabet))
    return map(c -> mapping[c], s)
end
