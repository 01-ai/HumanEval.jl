"""
Returns encoded string by shifting every character by 5 in the alphabet.
"""
function encode_shift(s::String)::String
    join(((x - 'a' + 5 + 26) % 26 + 'a' for x in s))
end

"""
Takes as input string encoded with `encode_shift` function. Returns decoded string.
"""
function decode_shift(s::String)::String
    # Step 2-8: Decode each character and join them into a string
    join(((x - 'a' - 5 + 26) % 26 + 'a' for x in s))
end
