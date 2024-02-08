"""
Returns encoded string by shifting every character by 5 in the alphabet.
"""
function encode_shift(s::String)::String
    join(((x - 'a' + 5 + 26) % 26 + 'a' for x in s))
end

"""
Takes as input string encoded with `encode_shift` function. Returns decoded string.
"""



"""
Returns decoded string by shifting every character by -5 in the alphabet.
"""
function decode_shift(s::String)::String
    join(((x - 'a' - 5 + 26) % 26 + 'a' for x in s))
end

# Test cases
@assert encode_shift("hello") == "mjqqt"
@assert decode_shift("mjqqt") == "hello"
@assert encode_shift("world") == "zsyqnf"
@assert decode_shift("zsyqnf") == "world"
@assert encode_shift("julia") == "qvvkz"
@assert decode_shift("qvvkz") == "julia"
print("All test cases pass")
