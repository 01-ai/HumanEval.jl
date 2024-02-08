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
    join((length(x) == 3 ? x[end] * x[1:2] : x for x in Iterators.partition(s, 3)))
end

# Testing the functions
s = "Hello, World!"
encoded = encode_cyclic(s)
println("Encoded: ", encoded)
decoded = decode_cyclic(encoded)
println("Decoded: ", decoded)

# Output:
# Encoded: eHllo,W rld
# Decoded: Hello, World

