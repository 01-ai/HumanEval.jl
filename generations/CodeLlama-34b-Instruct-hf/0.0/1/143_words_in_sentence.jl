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
    words = split(sentence, " ")

    # Create a new array to store the prime number words
    prime_words = []

    # Iterate over the words and check if they are prime numbers
    for word in words
        if isprime(length(word))
            push!(prime_words, word)
        end
    end

    # Join the prime number words into a string
    return join(prime_words, " ")
end
