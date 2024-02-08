"""
Returns encoded string by shifting every character by 5 in the alphabet.
"""
function encode_shift(s::String)::String
    join(((x - 'a' + 5 + 26) % 26 + 'a' for x in s))
end

"""
Takes as input string encoded with `encode_shift` function. Returns decoded string.
"""

# Function to encode a string by shifting every character by 5 in the alphabet
function encode_shift(s::String)::String
    join(((x - 'a' + 5) % 26 + 'a' for x in s))
end

# Function to decode a string encoded with `encode_shift` function
function decode_shift(s::String)::String
    join(((x - 'a' + 21) % 26 + 'a' for x in s))
end
