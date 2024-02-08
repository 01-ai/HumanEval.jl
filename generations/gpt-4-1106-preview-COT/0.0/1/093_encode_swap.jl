"""
    encode_swap(message::String)::String

Write a function that takes a message, and encodes in such a way that it swaps
case of all letters, replaces all vowels in the message with the letter that
appears 2 places after that vowel in the english alphabet. Assume only
letters.

# Examples

```jldoctest
julia> encode_swap("test")
"TGST"

julia> encode_swap("This is a message")
"tHKS KS C MGSSCGG"
```
"""

To implement the `encode_swap` function, we will follow these steps:

1. Define the function `encode_swap` that takes a single argument `message` of type `String`.
2. Create a mapping of vowels to their corresponding letters that appear 2 places after them in the English alphabet.
3. Initialize an empty string `encoded_message` to store the result.
4. Iterate over each character in the `message`.
   - If the character is a vowel (a, e, i, o, u, A, E, I, O, U), replace it with the corresponding letter from the mapping.
   - If the character is a lowercase letter, convert it to uppercase.
   - If the character is an uppercase letter, convert it to lowercase.
   - Append the resulting character to `encoded_message`.
5. Return the `encoded_message`.

Now, let's write the code for the `encode_swap` function.
