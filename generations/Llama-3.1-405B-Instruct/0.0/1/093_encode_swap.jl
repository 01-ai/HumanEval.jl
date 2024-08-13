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
    """
    Encodes a message by swapping case of all letters and replacing vowels with the letter 2 places after it in the alphabet.
    
    Parameters:
    message (String): The input message to be encoded.
    
    Returns:
    String: The encoded message.
    """
    vowels = ['a', 'e', 'i', 'o', 'u']
    encoded_message = ""

    for char in message
        # Check if character is a vowel
        if lowercase(char) in vowels
            # Find the index of the vowel in the alphabet (a=1, b=2, ..., z=26)
            idx = Int(lowercase(char)) - 96
            # Replace vowel with the letter 2 places after it
            new_idx = (idx + 2 - 1) % 26 + 1
            new_char = Char(new_idx + 96)
            # Swap case of the new character
            if isuppercase(char)
                encoded_message *= lowercase(new_char)
            else
                encoded_message *= uppercase(new_char)
            end
        else
            # If not a vowel, just swap case
            if isuppercase(char)
                encoded_message *= lowercase(char)
            else
                encoded_message *= uppercase(char)
            end
        end
    end

    return encoded_message
end
