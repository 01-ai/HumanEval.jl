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
function encode_swap(message::String)::String
    # Define the vowels and their replacements
    vowels = 'a':'z'
    replacements = 'c':'z'

    # Initialize an empty string to store the encoded message
    encoded_message = ""

    # Iterate over each character in the message
    for c in message
        # Check if the character is a letter
        if isletter(c)
            # Swap the case of the character
            c = c == lowercase(c) ? uppercase(c) : lowercase(c)

            # Check if the character is a vowel
            if c in vowels
                # Find the index of the vowel in the vowels array
                index = findfirst(isequal(c), vowels)

                # Replace the vowel with the corresponding replacement
                c = replacements[index]
            end
        end

        # Append the transformed character to the encoded message
        encoded_message *= c
    end

    # Return the encoded message
    return encoded_message
end
