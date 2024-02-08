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
    vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']
    result = ""
    for char in message
        if char in vowels
            if char == 'a' || char == 'A'
                result *= 'C'
            elseif char == 'e' || char == 'E'
                result *= 'G'
            elseif char == 'i' || char == 'I'
                result *= 'K'
            elseif char == 'o' || char == 'O'
                result *= 'Q'
            elseif char == 'u' || char == 'U'
                result *= 'W'
            end
        else
            if char == 't' || char == 'T'
                result *= 'T'
            elseif char == 's' || char == 'S'
                result *= 'S'
            elseif char == 'c' || char == 'C'
                result *= 'F'
            elseif char == 'd' || char == 'D'
                result *= 'P'
            elseif char == 'h' || char == 'H'
                result *= 'B'
            elseif char == 'r' || char == 'R'
                result *= 'V'
            elseif char == 'n' || char == 'N'
                result *= 'J'
            elseif char == 'm' || char == 'M'
                result *= 'Z'
            elseif char == 'w' || char == 'W'
                result *= 'X'
            elseif char == 'y' || char == 'Y'
                result *= 'L'
            elseif char == 'b' || char == 'B'
                result *= 'N'
            elseif char == 'g' || char == 'G'
                result *= 'O'
            elseif char == 'p' || char == 'P'
                result *= 'D'
            elseif char == 'q' || char == 'Q'
                result *= 'E'
            elseif char == 'f' || char == 'F'
                result *= 'H'
            elseif char == 'j' || char == 'J'
                result *= 'I'
            elseif char == 'z' || char == 'Z'
                result *= 'R'
            elseif char == 'x' || char == 'X'
                result *= 'U'
            elseif char == 'l' || char == 'L'
                result *= 'Y'
            elseif char == 'v' || char == 'V'
                result *= 'M'
            elseif char == 'k' || char == 'K'
                result *= 'A'
            elseif char == 'b' || char == 'B'
                result *= 'N'
            elseif char == 'g' || char == 'G'
                result *= 'O'
            elseif char == 'p' || char == 'P'
                result *= 'D'
            elseif char == 'q' || char == 'Q'
                result *= 'E'
            elseif char == 'f' || char == 'F'
                result *= 'H'
            elseif char == 'j' || char == 'J'
                result *= 'I'
            elseif char == 'z' || char == 'Z'
                result *= 'R'
            elseif char == 'x' || char == 'X'
                result *= 'U'
            elseif char == 'l' || char == 'L'
                result *= 'Y'
            elseif char == 'v' || char == 'V'
                result *= 'M'
            elseif char == 'k' || char == 'K'
                result *= 'A'
            else
                result *= char
            end
        end
    end
    return result
end
