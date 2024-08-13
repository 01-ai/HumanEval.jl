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
        if char ∈ vowels
            # Find the vowel in the array and replace it with the letter 2 places after
            index = findfirst(isequal(char), vowels)
            if index ≤ 3
                new_char = vowels[index + 2]
            else
                new_char = vowels[index - 3]  # Wrap around for 'u'
            end
        elseif 'A' ≤ char ≤ 'Z'
            # Swap case for uppercase letters
            new_char = lowercase(char)
        elseif 'a' ≤ char ≤ 'z'
            # Swap case for lowercase letters
            new_char = uppercase(char)
        else
            # Keep non-letter characters as is
            new_char = char
        end
        encoded_message *= string(new_char)
    end

    return encoded_message
end
