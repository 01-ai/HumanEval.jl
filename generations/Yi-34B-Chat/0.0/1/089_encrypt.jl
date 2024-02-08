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
    # Initialize an empty string to store the encrypted text
    encrypted_text = ""

    # Loop over each character in the input string
    for c in s
        # Get the ASCII value of the current character
        char_code = Int(c)

        # If the character is a letter (a-z or A-Z), rotate it by 2*2 positions
        if (char_code >= 97) && (char_code <= 122) # Lowercase letters
            # Rotate the character by 2*2 positions
            new_char_code = mod(char_code - 2*2, 26) + 97
            # Append the rotated character to the encrypted text
            encrypted_text *= String(new_char_code)
        elseif (char_code >= 65) && (char_code <= 90) # Uppercase letters
            # Rotate the character by 2*2 positions
            new_char_code = mod(char_code - 2*2, 26) + 65
            # Append the rotated character to the encrypted text
            encrypted_text *= String(new_char_code)
        else
            # If the character is not a letter, just append it as is
            encrypted_text *= c
        end
    end

    # Return the encrypted text
    return encrypted_text
end
