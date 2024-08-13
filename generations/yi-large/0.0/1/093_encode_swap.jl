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
    # Define a dictionary for vowel replacement
    vowel_map = Dict('a' => 'c', 'e' => 'g', 'i' => 'k', 'o' => 'q', 'u' => 'w', 'A' => 'C', 'E' => 'G', 'I' => 'K', 'O' => 'Q', 'U' => 'W')

    # Initialize an empty string for the encoded message
    encoded_message = ""

    # Iterate over each character in the message
    for char in message
        # Check if the character is a vowel
        if haskey(vowel_map, char)
            # If it is a vowel, replace it with the corresponding character from the vowel_map
            encoded_message *= vowel_map[char]
        else
            # If it is not a vowel, check if it is a letter and swap its case
            if islowercase(char)
                encoded_message *= uppercase(char)
            elseif isuppercase(char)
                encoded_message *= lowercase(char)
            else
                # If it is not a letter, just add it to the encoded message as is
                encoded_message *= char
            end
        end
    end

    return encoded_message
end
