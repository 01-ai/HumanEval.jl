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
    # Initialize an empty string to store the encoded message
    encoded_message = ""

    # Loop through each character in the message
    for char in message
        # If the character is a vowel (a, e, i, o, u)
        if char in "aeiou"
            # Replace it with the letter that appears 2 places after it in the alphabet
            if char == "a"
                char = "c"
            elseif char == "e"
                char = "g"
            elseif char == "i"
                char = "k"
            elseif char == "o"
                char = "q"
            elseif char == "u"
                char = "s"
            end
        end

        # Swap the case of the character
        char = uppercase(char)

        # Append the encoded character to the encoded message
        encoded_message *= char
    end

    # Return the encoded message
    return encoded_message
end
