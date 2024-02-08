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
    vowels = Set(['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U'])
    encoded_message = ""
    for char in message
        if isletter(char)
            if char in vowels
                encoded_char = Char(Int(char) + 2)
                if encoded_char > 'z'
                    encoded_char -= 26
                end
            else
                if isuppercase(char)
                    encoded_char = lowercase(char)
                else
                    encoded_char = uppercase(char)
                end
            end
            encoded_message *= string(encoded_char)
        else
            encoded_message *= string(char)
        end
    end
    return encoded_message
end
