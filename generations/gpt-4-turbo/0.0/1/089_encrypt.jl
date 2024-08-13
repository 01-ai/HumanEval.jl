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
    shift = 2 * 2  # As specified, shift down by two multiplied by two places

    # Encrypt the string by shifting each character
    encrypted = [char(c + shift) for c in s]

    # Convert the list of characters back to a string
    return join(encrypted)
end

# Helper function to handle character wrapping for lowercase letters
function char(c::Int)
    # Check if the character is a lowercase letter
    if 'a' <= c <= 'z'
        # Wrap around if the shift goes beyond 'z'
        return Char((c - 'a' + 26) % 26 + 'a')
    else
        # Return the character as is if it's not a lowercase letter
        return Char(c)
    end
end
