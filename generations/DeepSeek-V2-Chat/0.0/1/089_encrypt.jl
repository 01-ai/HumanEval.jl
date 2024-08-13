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
    # Define the alphabet
    alphabet = 'a':'z'
    
    # Create a dictionary for quick lookup of rotated characters
    rotated_dict = Dict(c => alphabet[(Int(c) - Int('a') + 4) % 26 + 1] for c in alphabet)
    
    # Encrypt the string
    encrypted_string = join(rotated_dict[c] for c in s)
    
    return encrypted_string
end
