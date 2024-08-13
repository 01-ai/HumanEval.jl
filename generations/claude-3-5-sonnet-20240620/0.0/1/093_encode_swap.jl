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
    vowels = Dict('a' => 'c', 'e' => 'g', 'i' => 'k', 'o' => 'q', 'u' => 'w',
                  'A' => 'C', 'E' => 'G', 'I' => 'K', 'O' => 'Q', 'U' => 'W')
    
    function swap_and_replace(char::Char)
        if islowercase(char)
            return get(vowels, char, uppercase(char))
        elseif isuppercase(char)
            return get(vowels, char, lowercase(char))
        else
            return char
        end
    end
    
    return join(swap_and_replace.(collect(message)))
end
