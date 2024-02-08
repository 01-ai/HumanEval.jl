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
    alphabet = 'a':'z'
    rotation_factor = 2 * 2

    # Helper function to rotate a single character
    function rotate_char(c)
        if c in alphabet
            # Find the index of the character in the alphabet
            index = findfirst(isequal(c), alphabet)
            # Calculate the new index after rotation
            new_index = mod1(index + rotation_factor, length(alphabet))
            # Return the character at the new index
            return alphabet[new_index]
        else
            # If the character is not in the alphabet, return it unchanged
            return c
        end
    end

    # Apply the rotation to each character in the string
    return join(map(rotate_char, s))
end

# Example usage
println(encrypt("hi"))       # Output: "lm"
println(encrypt("asdfghjkl")) # Output: "ewhjklnop"
println(encrypt("gf"))       # Output: "kj"
println(encrypt("et"))       # Output: "ix"
