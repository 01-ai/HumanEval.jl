"""
    words_in_sentence(sentence::String)::String

You are given a string representing a sentence, the sentence contains some words
separated by a space, and you have to return a string that contains the words
from the original sentence, whose lengths are prime numbers, the order of the
words in the new string should be the same as the original one.

Constraints:

    * 1 <= len(sentence) <= 100
    * sentence contains only letters

# Examples

```jldoctest
julia> words_in_sentence("This is a test")
"is"

julia> words_in_sentence("lets go for swimming")
"go for"
```
"""
function words_in_sentence(sentence::String)::String
    # Split the sentence into words
    words = split(sentence)

    # Initialize an empty string to store the result
    result = ""

    # Iterate through each word
    for word in words
        # Check if the length of the word is a prime number
        if is_prime(length(word))
            # Append the word to the result
            result *= " " * word
        end
    end

    # Remove the leading space and return the result
    return strip(result)
end

# Function to check if a number is prime
function is_prime(n::Int)::Bool
    if n <= 1
        return false
    end

    for i in 2:floor(Int, sqrt(n))
        if n % i == 0
            return false
        end
    end

    return true
end
