"""
Returns encoded string by cycling groups of three characters.
"""
function encode_cyclic(s::String)::String
    join((length(x) == 3 ? x[2] * x[3] * x[1] : x for x in Iterators.partition(s, 3)))
end

"""
    decode_cyclic(s::String)::String

Takes as input string encoded with `encode_cyclic` function. Returns decoded
string.
"""
function decode_cyclic(s::String)::String
    join((length(x) == 3 ? x[3] * x[1] * x[2] : x for x in Iterators.partition(s, 3)))
end
# Test the decode_cyclic function
encoded_str = encode_cyclic("HelloWorld")
println("Encoded: $encoded_str")

decoded_str = decode_cyclic(encoded_str)
println("Decoded: $decoded_str")

# Check if the decoded string matches the original string
original_str = "HelloWorld"
println("Match: $decoded_str == $original_str")
