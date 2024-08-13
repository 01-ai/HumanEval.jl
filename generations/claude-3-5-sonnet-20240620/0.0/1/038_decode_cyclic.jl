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
    decoded = ""
    for chunk in Iterators.partition(s, 3)
        if length(chunk) == 3
            decoded *= chunk[3] * chunk[1] * chunk[2]
        else
            decoded *= join(chunk)
        end
    end
    return decoded
end
encoded = "bac" # This would be the result of encode_cyclic("abc")
decoded = decode_cyclic(encoded)
println(decoded)  # Output: abc
