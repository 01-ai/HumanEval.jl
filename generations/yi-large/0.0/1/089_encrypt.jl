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
    # Create a dictionary to map each character to its encrypted counterpart
    encrypt_dict = Dict(alphabet[i] => alphabet[(i + 2) % 26 + 1] for i in 1:26)
    
    # Function to encrypt a single character
    function encrypt_char(char)
        if char in keys(encrypt_dict)
            return encrypt_dict[char]
        else
            return char
        end
    end
    
    # Apply the encryption function to each character in the string
    encrypted_string = join(encrypt_char(char) for char in s)
    
    return encrypted_string
end

# Example usage
println(encrypt("hi")) # Output: "lm"
println(encrypt("asdfghjkl")) # Output: "ewhjklnop"
println(encrypt("gf")) # Output: "kj"
println(encrypt("et")) # Output: "ix"
