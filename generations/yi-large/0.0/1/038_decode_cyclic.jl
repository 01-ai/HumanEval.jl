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
    # Ensure the length of the string is a multiple of 3
    if length(s) % 3 != 0
        throw(ArgumentError("The length of the input string must be a multiple of 3."))
    end

    # Decode the string by cycling the characters in each group of three
    join((length(x) == 3 ? x[3] * x[1] * x[2] : x for x in Iterators.partition(s, 3)))
end
