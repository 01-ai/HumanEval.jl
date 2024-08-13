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
    # Define the shift amount
    shift = 2 * 2

    # Create a function to shift a single character
    function shift_char(c::Char)
        if 'a' <= c <= 'z'
            return 'a' + mod((c - 'a') + shift, 26)
        elseif 'A' <= c <= 'Z'
            return 'A' + mod((c - 'A') + shift, 26)
        else
            return c
        end
    end

    # Apply the shift to each character in the string
    return String(map(shift_char, s))
end
