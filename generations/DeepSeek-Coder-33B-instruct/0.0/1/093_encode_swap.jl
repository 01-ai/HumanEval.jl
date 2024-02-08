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
    vowels = "aeiou"
    encoded_message = ""
    for char in message
        if isletter(char)
            if char in vowels
                char = char == 'u' ? 'a' : Char(Int(char) + 2)
                char = isuppercase(char) ? uppercase(char) : lowercase(char)
            else
                char = isuppercase(char) ? lowercase(char) : uppercase(char)
            end
        end
        encoded_message *= string(char)
    end
    return encoded_message
end
