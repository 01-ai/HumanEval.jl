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
    # Use a generator expression to process each group of three characters.
    # For each group, move the last character to the beginning.
    # If the group is not of length 3 (which means it's the end of the string and was less than 3 characters), leave it as is.
    join((length(x) == 3 ? x[end] * x[1:end-1] : x for x in Iterators.partition(s, 3)))
end
