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

"""
Returns encoded string by cycling groups of three characters.
"""
function encode_cyclic(s::String)::String
    # Join the result of iterating over the string in groups of 3,
    # with the middle character of each group at the beginning,
    # followed by the last two characters in reverse order.
    return join((length(x) == 3 ? x[2] * x[3] * x[1] : x for x in Iterators.partition(s, 3)))
end

"""
    decode_cyclic(s::String)::String

Takes as input string encoded with `encode_cyclic` function. Returns decoded
string.
"""
function decode_cyclic(s::String)::String
    # Implement the decoding logic here.
    # For example, if the input is "abcdefgh", the output should be "abcdefgh".
    # The function should handle cases where the input does not have a
    # clean division into groups of three.
    # You can use `split` and `join` to work with the string.
    # Hint: You might want to reverse the string and then split it into
    # chunks of 3, and then join those chunks back together.
    #
    # Example usage:
    # julia> decode_cyclic("cdefghab")
    # "abcdefgh"
    #
    # Note: This is a placeholder function. You need to implement the
    # actual decoding logic.
    throw(ErrorException("decode_cyclic function not implemented"))
end
