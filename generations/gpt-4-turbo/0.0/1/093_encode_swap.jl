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
    # Define a dictionary to map vowels to their corresponding characters
    vowel_shift = Dict(
        'a' => 'c', 'e' => 'g', 'i' => 'k', 'o' => 'q', 'u' => 'w',
        'A' => 'C', 'E' => 'G', 'I' => 'K', 'O' => 'Q', 'U' => 'W'
    )
    
    # Function to swap case
    function swap_case(c::Char)::Char
        if islower(c)
            return uppercase(c)
        else
            return lowercase(c)
        end
    end
    
    # Encode the message
    encoded = [vowel_shift.get(swap_case(c), swap_case(c)) for c in message]
    
    # Join the list of characters into a string
    return join(encoded)
end
