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
    # Define the alphabet and the rotation factor
    alphabet = "abcdefghijklmnopqrstuvwxyz"
    rotation_factor = 4
    encrypted_message = []

    # Iterate through each character in the input string
    for char in s
        # Check if the character is a letter
        if isletter(char)
            # Determine if the character is uppercase to preserve case
            is_upper = isuppercase(char)
            char = lowercase(char)  # Convert to lowercase for mapping

            # Find the index of the character in the alphabet
            index = findfirst(isequal(char), alphabet)

            # Calculate the new index after rotation
            new_index = (index + rotation_factor - 1) % length(alphabet) + 1

            # Get the encrypted character
            encrypted_char = alphabet[new_index]

            # Convert back to uppercase if necessary
            if is_upper
                encrypted_char = uppercase(encrypted_char)
            end

            # Append the encrypted character to the result
            push!(encrypted_message, encrypted_char)
        else
            # If not a letter, append the character as it is
            push!(encrypted_message, char)
        end
    end

    # Return the encrypted message as a string
    return join(encrypted_message)
end
