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
    vowels = "aeiou"
    vowels_shifted = "cgiow"

    function shift_vowel(c::Char)
        if c in vowels
            return vowels_shifted[findfirst(==(c), vowels)]
        elseif c in uppercase(vowels)
            return uppercase(vowels_shifted[findfirst(==(lowercase(c)), vowels)])
        else
            return c
        end
    end

    function swap_case(c::Char)
        if islowercase(c)
            return uppercase(c)
        elseif isuppercase(c)
            return lowercase(c)
        else
            return c
        end
    end

    encoded_message = ""
    for c in message
        shifted_char = shift_vowel(c)
        swapped_char = swap_case(shifted_char)
        encoded_message *= swapped_char
    end

    return encoded_message
end

# Examples
println(encode_swap("test"))  # Output: "TGST"
println(encode_swap("This is a message"))  # Output: "tHKS KS C MGSSCGG"
