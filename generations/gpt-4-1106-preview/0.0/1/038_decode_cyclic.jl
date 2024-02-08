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
    # We will use a generator expression to process each group of three characters
    # and move the last character to the beginning to decode it.
    # If the group is not of length 3, it means it's the last group and was not encoded,
    # so we leave it as is.
    join((length(x) == 3 ? x[3] * x[1] * x[2] : x for x in Iterators.partition(s, 3)))
end
