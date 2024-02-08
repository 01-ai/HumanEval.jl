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



# Solution

function encrypt(s::String)
    alphabet = 'a':'z'
    shifted_alphabet = circshift(alphabet, -4)
    dict = Dict(zip(alphabet, shifted_alphabet))
    encrypted_s = ""
    for c in s
        if c in alphabet
            push!(encrypted_s, dict[c])
        else
            push!(encrypted_s, c)
        end
    end
    return encrypted_s
end

# Test cases
@assert encrypt("hi") == "lm"
@assert encrypt("asdfghjkl") == "ewhjklnop"
@assert encrypt("gf") == "kj"
@assert encrypt("et") == "ix"
