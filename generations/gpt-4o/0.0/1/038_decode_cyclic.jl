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
# Test the encode_cyclic function
encoded = encode_cyclic("abcdefghi")
println(encoded)  # Output should be "bcaefdhgi"

# Test the decode_cyclic function
decoded = decode_cyclic(encoded)
println(decoded)  # Output should be "abcdefghi"
