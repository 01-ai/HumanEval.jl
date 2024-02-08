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
    vowels = ['a', 'e', 'i', 'o', 'u']
    encoded_message = ""
    for char in message
        if islowercase(char)
            encoded_message *= islowercase(char) ? uppercase(char) : lowercase(char)
        elseif isuppercase(char)
            encoded_message *= isuppercase(char) ? lowercase(char) : uppercase(char)
        elseif char in vowels
            encoded_message *= vowels[(findfirst(x -> x == char, vowels) + 2) % 5]
        else
            encoded_message *= char
        end
    end
    return encoded_message
end
