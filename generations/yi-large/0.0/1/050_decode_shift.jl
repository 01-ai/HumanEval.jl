"""
Returns encoded string by shifting every character by 5 in the alphabet.
"""
function encode_shift(s::String)::String
    join(((x - 'a' + 5 + 26) % 26 + 'a' for x in s))
end

"""
Takes as input string encoded with `encode_shift` function. Returns decoded string.
"""
function decode_shift(s::String)::String
    join(((x - 'a' - 5 + 26) % 26 + 'a' for x in s))
end

# Example usage
encoded_string = encode_shift("hello")
decoded_string = decode_shift(encoded_string)

println("Original string: hello")
println("Encoded string: ", encoded_string)
println("Decoded string: ", decoded_string)
