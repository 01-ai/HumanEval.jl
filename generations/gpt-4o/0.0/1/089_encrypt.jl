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
    encrypted = String[]
    for char in s
        if 'a' <= char <= 'z'
            new_char = Char((Int(char) - Int('a') + 4) % 26 + Int('a'))
            push!(encrypted, new_char)
        else
            push!(encrypted, char)
        end
    end
    return join(encrypted)
end
println(encrypt("hi"))         # Output: "lm"
println(encrypt("asdfghjkl"))  # Output: "ewhjklnop"
println(encrypt("gf"))         # Output: "kj"
println(encrypt("et"))         # Output: "ix"
