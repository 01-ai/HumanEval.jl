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
    # Define a dictionary to map vowels to their respective replacements
    vowel_replacements = Dict(
        'a' => 'c', 'A' => 'C',
        'e' => 'g', 'E' => 'G',
        'i' => 'k', 'I' => 'K',
        'o' => 'q', 'O' => 'Q',
        'u' => 'w', 'U' => 'W'
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
    encoded_message = map(message) do c
        if isletter(c)
            swapped_c = swap_case(c)
            return get(vowel_replacements, swapped_c, swapped_c)  # Replace if vowel, else keep the swapped character
        else
            return c
        end
    end

    return join(encoded_message)
end

# Example usage
println(encode_swap("test"))  # Expected: "TGST"
println(encode_swap("This is a message"))  # Expected: "tHKS KS C MGSSCGG"
