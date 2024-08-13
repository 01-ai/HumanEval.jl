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
    shift = 4
    encrypted_chars = Char[]

    for c in s
        if 'a' <= c <= 'z'
            # Shift the character within the range 'a' to 'z'
            new_char = 'a' + mod((c - 'a' + shift), 26)
            push!(encrypted_chars, new_char)
        elseif 'A' <= c <= 'Z'
            # Shift the character within the range 'A' to 'Z'
            new_char = 'A' + mod((c - 'A' + shift), 26)
            push!(encrypted_chars, new_char)
        else
            # Non-alphabetic characters remain unchanged
            push!(encrypted_chars, c)
        end
    end

    return String(encrypted_chars)
end

# Testing the function with the provided examples
println(encrypt("hi"))        # Output: "lm"
println(encrypt("asdfghjkl")) # Output: "ewhjklnop"
println(encrypt("gf"))        # Output: "kj"
println(encrypt("et"))        # Output: "ix"
