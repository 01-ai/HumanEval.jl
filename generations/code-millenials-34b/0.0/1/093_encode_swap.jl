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
    swapped = ""
    for c in message
        if isalpha(c)
            if islower(c)
                swapped *= uppercase(c)
            else
                swapped *= lowercase(c)
            end
        else
            swapped *= c
        end
    end
    encoded = ""
    for c in swapped
        if isalpha(c)
            if c in "aeiouAEIOU"
                encoded *= Char(Int(c)+2)
            else
                encoded *= c
            end
        else
            encoded *= c
        end
    end
    return encoded
end

# Test cases
@assert encode_swap("test") == "TGST"
@assert encode_swap("This is a message") == "tHKS KS C MGSSCGG"

