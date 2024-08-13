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
    # Define vowels and their replacements
    vowels = ['a', 'e', 'i', 'o', 'u']
    replacements = ['c', 'g', 'k', 'q', 'w']
    
    # Function to swap case
    function swap_case(c::Char)::Char
        if islower(c)
            return uppercase(c)
        else
            return lowercase(c)
        end
    end
    
    # Function to replace vowels
    function replace_vowel(c::Char)::Char
        if c in vowels
            return replacements[findfirst(==(lowercase(c)), vowels)]
        else
            return c
        end
    end
    
    # Process each character in the message
    encoded_message = map(c -> replace_vowel(swap_case(c)), message)
    
    return join(encoded_message)
end
