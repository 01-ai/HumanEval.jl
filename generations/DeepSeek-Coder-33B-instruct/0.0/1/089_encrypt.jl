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
    encrypted_alphabet = alphabet[2*2+1:end] * alphabet[1:2*2]
    return map(c -> isalpha(c) ? encrypted_alphabet[findfirst(isequal(c), alphabet)] : c, collect(s)) |> join
end
