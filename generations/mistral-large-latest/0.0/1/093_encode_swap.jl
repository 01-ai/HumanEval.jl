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
    vowels_dict = Dict(zip(vowels, vowels[3:end] * vowels[1:2]))
    encoded_message = ""

    for char in message
        if isletter(char)
            new_char = isuppercase(char) ? uppercase(get(vowels_dict, lowercase(char), char)) : get(vowels_dict, lowercase(char), char)
            encoded_message *= islowercase(char) ? uppercase(new_char) : lowercase(new_char)
        else
            encoded_message *= char
        end
    end

    return encoded_message
end
