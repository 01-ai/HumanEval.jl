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
    vowels = "aeiouAEIOU"
    encoded = ""

    for char in message
        if isletter(char)
            if lowercase(char) in vowels
                vowel_index = findfirst(vowels, lowercase(char))
                new_char = vowels[mod(vowel_index + 1, length(vowels)) + 1]
                if isuppercase(char)
                    new_char = uppercase(new_char)
                end
                encoded *= new_char
            else
                if islowercase(char)
                    encoded *= uppercase(char)
                else
                    encoded *= lowercase(char)
                end
            end
        else
            encoded *= char
        end
    end

    return encoded
end
