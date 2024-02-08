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
Returns encoded string by shifting every character by 5 in the alphabet.
"""
function encode_shift(s::String)::String
    join(((x - 'a' + 5 + 26) % 26 + 'a' for x in s))
end

"""
Takes as input string encoded with `encode_shift` function. Returns decoded string.
"""
function decode_shift(s::String)::String
    # Your code here
end
function decode_shift(s::String)::String
    # Step 1: Loop over each character in the string
    decoded_string = ""
    for c in s
        # Step 2: Calculate the shift
        shift_amount = (c - 'a' - 5) % 26
        # Step 3: Add the shifted character to the decoded string
        decoded_string += (shift_amount + 'a')
    end
    return decoded_string
end
