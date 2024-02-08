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
    result = ""
    for c in s
        if isletter(c)
            if islowercase(c)
                result *= Char((c - 'a' + 2*2) % 26 + 'a')
            else
                result *= Char((c - 'A' + 2*2) % 26 + 'A')
            end
        else
            result *= c
        end
    end
    return result
end
