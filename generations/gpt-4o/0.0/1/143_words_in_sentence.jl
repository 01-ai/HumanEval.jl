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

# Helper function to check if a number is prime
function is_prime(n::Int)
    if n <= 1
        return false
    elseif n == 2
        return true
    else
        for i in 2:sqrt(n)
            if n % i == 0
                return false
            end
        end
        return true
    end
end

# Main function to filter words with prime lengths
function words_in_sentence(sentence::String)::String
    words = split(sentence)
    prime_length_words = filter(word -> is_prime(length(word)), words)
    return join(prime_length_words, " ")
end

# Examples
println(words_in_sentence("This is a test"))  # Output: "is"
println(words_in_sentence("lets go for swimming"))  # Output: "go for"
