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
    # Define a dictionary for vowel replacements
    vowel_replacement = Dict(
        'a' => 'c', 'e' => 'g', 'i' => 'k', 'o' => 'q', 'u' => 'w',
        'A' => 'C', 'E' => 'G', 'I' => 'K', 'O' => 'Q', 'U' => 'W'
    )
    
    # Initialize an empty string to store the encoded message
    encoded_message = ""
    
    # Iterate over each character in the message
    for char in message
        # Swap the case of the character
        if isuppercase(char)
            char = lowercase(char)
        else
            char = uppercase(char)
        end
        
        # Replace the vowel if it is in the dictionary
        if haskey(vowel_replacement, char)
            char = vowel_replacement[char]
        end
        
        # Append the modified character to the encoded message
        encoded_message *= char
    end
    
    return encoded_message
end
println(encode_swap("test"))         # Output: "TGST"
println(encode_swap("This is a message"))  # Output: "tHKS KS C MGSSCGG"
