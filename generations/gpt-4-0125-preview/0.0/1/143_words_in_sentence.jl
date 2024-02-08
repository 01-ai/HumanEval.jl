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
function is_prime(n::Int)::Bool
    if n <= 1
        return false
    end
    for i in 2:sqrt(n)
        if n % i == 0
            return false
        end
    end
    return true
end
function words_in_sentence(sentence::String)::String
    # Split the sentence into words
    words = split(sentence)
    
    # Filter words whose lengths are prime numbers
    prime_length_words = filter(word -> is_prime(length(word)), words)
    
    # Join the filtered words back into a string
    return join(prime_length_words, " ")
end
