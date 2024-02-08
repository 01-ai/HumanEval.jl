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
    # Define the alphabet and its length for easy reference
    alphabet = 'a':'z'
    alphabet_len = length(alphabet)

    # Convert the input string to a list of characters for processing
    encrypted_chars = Char[]

    for char in s
        # Check if the character is a lowercase letter
        if char in alphabet
            # Find the index of the character in the alphabet
            index = findfirst(isequal(char), alphabet)
            # Calculate the new index after rotation, wrapping around if necessary
            new_index = mod(index + 4 - 1, alphabet_len) + 1
            # Append the encrypted character to the result list
            push!(encrypted_chars, alphabet[new_index])
        else
            # If the character is not a lowercase letter, just append it as is
            push!(encrypted_chars, char)
        end
    end

    # Convert the list of characters back to a string and return it
    return join(encrypted_chars)
end
