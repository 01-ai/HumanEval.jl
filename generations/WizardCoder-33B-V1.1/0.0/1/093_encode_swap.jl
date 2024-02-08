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
    vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']
    result = ""
    for char in message
        if char in vowels
            if char in ['a', 'e', 'i', 'o', 'u']
                result *= uppercase(Char(Int(char) + 2))
            else
                result *= lowercase(Char(Int(char) + 2))
            end
        elseif isletter(char)
            if islowercase(char)
                result *= uppercase(char)
            else
                result *= lowercase(char)
            end
        else
            result *= char
        end
    end
    return result
end
