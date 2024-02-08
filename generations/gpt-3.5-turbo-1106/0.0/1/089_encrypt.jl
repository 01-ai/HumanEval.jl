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
    alphabet = collect('a':'z')
    encrypted = ""
    for char in s
        if char in alphabet
            index = findfirst(isequal(char), alphabet)
            new_index = mod(index + 2*2, 26) + 1
            encrypted *= alphabet[new_index]
        else
            encrypted *= char
        end
    end
    return encrypted
end