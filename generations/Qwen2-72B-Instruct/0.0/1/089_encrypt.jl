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
    # Define the alphabet and the encrypted alphabet
    const alpha = 'a':'z'
    const enc_alpha = ['a' + (mod((i + 4), 26)) for i in 0:25]

    # Convert the string to lowercase and map each character to its encrypted counterpart
    encrypted = map(c -> c in alpha ? enc_alpha[c - 'a' + 1] : c, lowercase(s))

    # Join the encrypted characters back into a string
    return join(encrypted)
end
