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
    # Create a new string with the same length as the input string
    encrypted = ""

    # Iterate over each character in the input string
    for c in s
        # Get the index of the character in the alphabet
        index = findfirst(c, 'a':'z')

        # If the character is not found in the alphabet, return the original character
        if index == 0
            encrypted *= c
        else
            # Rotate the character by two places
            new_index = (index + 2) % 26

            # Get the new character from the alphabet
            new_char = 'a' + new_index

            # Add the new character to the encrypted string
            encrypted *= new_char
        end
    end

    return encrypted
end
