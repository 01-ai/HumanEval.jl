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
    # Define a mapping of vowels to their corresponding shifted vowels
    vowel_mapping = Dict('a' => 'c', 'e' => 'g', 'i' => 'k', 'o' => 'q', 'u' => 'w')

    # Initialize an empty string to store the encoded message
    encoded_message = ""

    # Iterate through each character in the message
    for char in message
        # Check if the character is a vowel
        if char in keys(vowel_mapping)
            # Replace the vowel with its shifted counterpart
            encoded_message *= vowel_mapping[char]
        else
            # If the character is not a vowel, swap its case
            if char isa Char && uppercase(char) == char
                # If the character is uppercase, convert it to lowercase
                encoded_message *= lowercase(char)
            else
                # If the character is lowercase, convert it to uppercase
                encoded_message *= uppercase(char)
            end
        end
    end

    # Return the encoded message
    return encoded_message
end