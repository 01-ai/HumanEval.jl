"""
Returns encoded string by shifting every character by 5 in the alphabet.
"""
function encode_shift(s::String)::String
    join(((x - 'a' + 5 + 26) % 26 + 'a' for x in s))
end

"""
Takes as input string encoded with `encode_shift` function. Returns decoded string.
"""

\\nfunction decode_shift(s::String)::String\n    join(((x - 'a' - 5 + 26) % 26 + 'a' for x in s))\nend

To decode a string that was encoded using the `encode_shift` function, we need to reverse the shifting process. Here's how the `decode_shift` function works:

1. We iterate over each character `x` in the input string `s` using a generator expression.

2. For each character `x`, we perform the following operations:
   - Subtract `'a'` from `x` to convert the character to its corresponding integer value (0-25) based on its position in the alphabet.
   - Subtract 5 from the result to reverse the shift applied during encoding.
   - Add 26 to the result to handle negative values that may occur due to the subtraction.
   - Take the modulo of the result with 26 to ensure that the value stays within the range of 0-25.
   - Add `'a'` to the result to convert the integer value back to the corresponding lowercase letter.

3. The generator expression produces an iterator of the decoded characters.

4. We use the `join` function to concatenate the decoded characters into a single string.

5. Finally, the function returns the decoded string.

The `decode_shift` function effectively reverses the shifting process applied by the `encode_shift` function, allowing us to retrieve the original string.
