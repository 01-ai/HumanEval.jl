"""
Returns encoded string by shifting every character by 5 in the alphabet.
"""
function encode_shift(s::String)::String
    join(((x - 'a' + 5 + 26) % 26 + 'a' for x in s))
end

"""
Takes as input string encoded with `encode_shift` function. Returns decoded string.
"""
function decode_shift(encoded_str::String)::String
    # Decode each character by shifting it 21 positions back in the alphabet
    decoded_chars = ((char - 'a' + 21) % 26 + 'a' for char in encoded_str)
    # Join the decoded characters into a string and return
    return join(decoded_chars)
end
