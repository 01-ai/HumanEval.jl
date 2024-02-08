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
    # Define a dictionary to map vowels to the letter two places after them
    vowel_shift = Dict('a' => 'c', 'e' => 'g', 'i' => 'k', 'o' => 'q', 'u' => 'w',
                       'A' => 'C', 'E' => 'G', 'I' => 'K', 'O' => 'Q', 'U' => 'W')

    # Initialize an empty string to store the encoded message
    encoded_message = ""

    # Iterate through each character in the message
    for char in message
        # Check if the character is a vowel and replace it accordingly
        if char in keys(vowel_shift)
            encoded_message *= vowel_shift[char]
        # If not a vowel, swap the case and append to the encoded message
        else
            if islower(char)
                encoded_message *= uppercase(char)
            else
                encoded_message *= lowercase(char)
            end
        end
    end

    return encoded_message
end

# Helper function to check if a character is lowercase
function islower(c::Char)::Bool
    return 'a' <= c <= 'z'
end

# Helper function to check if a character is uppercase
function isupper(c::Char)::Bool
    return 'A' <= c <= 'Z'
end

# Examples
println(encode_swap("test")) # Output: "TGST"
println(encode_swap("This is a message")) # Output: "tHKS KS C MGSSCGG"
