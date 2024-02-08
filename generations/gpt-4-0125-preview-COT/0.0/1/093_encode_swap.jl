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
    # Define a mapping for vowels to their corresponding characters after shifting
    vowel_map = Dict('a' => 'c', 'e' => 'g', 'i' => 'k', 'o' => 'q', 'u' => 'w',
                     'A' => 'C', 'E' => 'G', 'I' => 'K', 'O' => 'Q', 'U' => 'W')
    
    # Initialize an empty string to hold the encoded message
    encoded_message = ""
    
    # Iterate through each character in the message
    for char in message
        # Check if the character is a letter and swap its case
        if isletter(char)
            if islower(char)
                char = uppercase(char)
            else
                char = lowercase(char)
            end
            
            # Check if the character is a vowel and replace it if necessary
            if char in keys(vowel_map)
                char = vowel_map[char]
            end
        end
        
        # Append the processed character to the encoded message
        encoded_message *= char
    end
    
    return encoded_message
end
