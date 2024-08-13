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
    vowels = Dict('a' => 'c', 'e' => 'g', 'i' => 'k', 'o' => 'q', 'u' => 'w')
    
    # Function to swap case
    swap_case(c::Char) = islower(c) ? uppercase(c) : lowercase(c)
    
    # Function to replace vowels
    replace_vowel(c::Char) = haskey(vowels, lowercase(c)) ? vowels[lowercase(c)] : c
    
    # Process each character in the message
    encoded_message = map(c -> replace_vowel(swap_case(c)), message)
    
    return String(encoded_message)
end
