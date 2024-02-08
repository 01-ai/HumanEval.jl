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
    # Create a new string to store the encoded message
    encoded_message = ""

    # Iterate over each character in the message
    for c in message
        # If the character is a letter, swap its case
        if isletter(c)
            encoded_message *= swapcase(c)
        # If the character is a vowel, replace it with the letter that appears 2 places after it in the English alphabet
        elseif isvowel(c)
            encoded_message *= next_letter(c, 2)
        # Otherwise, leave the character as is
        else
            encoded_message *= c
        end
    end

    return encoded_message
end

# Helper function to get the next letter in the English alphabet
function next_letter(c::Char, n::Int)::Char
    # Get the index of the current letter in the English alphabet
    index = findfirst(isequal(c), 'a':'z')

    # If the index is not found, return the original letter
    if index == 0
        return c
    end

    # Get the index of the next letter in the English alphabet
    next_index = mod(index + n, 26)

    # Return the letter at the next index
    return 'a' + next_index
end
