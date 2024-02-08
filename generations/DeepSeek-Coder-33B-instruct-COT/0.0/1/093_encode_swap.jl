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
    encoded_message = ""
    for c in message
        if isletter(c)
            if c in "aeiouAEIOU"
                if c in "yY"
                    c = c == 'y' ? 'a' : 'A'
                else
                    c = Char(Int(c) + 2)
                end
            else
                c = islowercase(c) ? uppercase(c) : lowercase(c)
            end
        end
        encoded_message *= string(c)
    end
    return encoded_message
end
