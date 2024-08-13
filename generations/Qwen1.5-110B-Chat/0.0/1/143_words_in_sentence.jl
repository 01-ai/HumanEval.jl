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
    # Helper function to check if a number is prime
    isprime(n::Int) = n > 1 && all(n % d ≠ 0 for d in 2:(isqrt(n)))

    # Split the sentence into words
    words = split(sentence)

    # Filter words with prime length
    prime_length_words = filter(word -> isprime(length(word)), words)

    # Join the filtered words back into a string with spaces
    return join(prime_length_words, " ")
end
