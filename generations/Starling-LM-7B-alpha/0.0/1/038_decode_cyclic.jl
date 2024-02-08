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
    groups = split(s, "")
    return join(groups[2:end-1] .* groups[1:end-2])
end
