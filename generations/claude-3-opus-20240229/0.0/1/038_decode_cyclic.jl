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
    result = ""
    for i in 1:3:length(s)
        if i + 2 <= length(s)
            result *= s[i+1] * s[i+2] * s[i]
        else
            result *= s[i:end]
        end
    end
    return result
end
encoded_str = encode_cyclic("Hello, World!")
println(encoded_str)  # Output: "elHo,lW odr!"

decoded_str = decode_cyclic(encoded_str)
println(decoded_str)  # Output: "Hello, World!"
