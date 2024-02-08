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

1.  function encode_swap(message::String)::String
2.      # Create a dictionary to map vowels to their next letters
3.      vowels = Dict('a' => 'c', 'e' => 'g', 'i' => 'k', 'o' => 'q', 'u' => 'w')
4.  
5.      # Initialize an empty string to store the encoded message
6.      encoded_message = ""
7.  
8.      # Iterate through each character in the message
9.      for c in message
10.         # Check if the character is a vowel
11.         if c in keys(vowels)
12.             # If it is a vowel, append the corresponding letter to the encoded message
13.             encoded_message *= vowels[c]
14.         else
15.             # If it is not a vowel, append the character as it is to the encoded message
16.             encoded_message *= c
17.         end
18.     end
19.  
20.     # Swap the case of all letters in the encoded message
21.     encoded_message = uppercase(encoded_message)
22.  
23.     # Return the encoded message
24.     return encoded_message
25. end
