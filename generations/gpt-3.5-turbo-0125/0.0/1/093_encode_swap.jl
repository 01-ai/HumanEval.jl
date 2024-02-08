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
    vowels = Set(['a', 'e', 'i', 'o', 'u'])
    encoded_message = ""
    
    for char in message
        if isletter(char)
            if isuppercase(char)
                char = lowercase(char)
            else
                char = uppercase(char)
            end
            
            if char in vowels
                char = Char(Int(char) + 2)
            end
        end
        
        encoded_message *= string(char)
    end
    
    return encoded_message
end
