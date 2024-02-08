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
    alphabet = "abcdefghijklmnopqrstuvwxyz"

    # Initialize the encrypted string
    encrypted_str = ""

    # Iterate through each character in the input string
    for char in s
        # Find the index of the character in the alphabet
        char_index = findfirst(x -> x == char, alphabet)

        # If the character is not in the alphabet, append it as is
        if char_index === nothing
            encrypted_str *= char
        else
            # Calculate the new index of the character after encryption
            new_index = (char_index + 2 * 2 - 1) % length(alphabet) + 1

            # Append the encrypted character to the encrypted string
            encrypted_str *= alphabet[new_index]
        end
    end

    # Return the encrypted string
    return encrypted_str
end
