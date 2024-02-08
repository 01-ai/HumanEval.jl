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

# Main function to filter words with prime length
function words_in_sentence(sentence::String)::String
    # Step 1: Split the sentence into words
    words = split(sentence)
    
    # Step 2 & 3: Filter words with prime length
    prime_length_words = filter(word -> is_prime(length(word)), words)
    
    # Step 4: Join the filtered words
    result_sentence = join(prime_length_words, " ")
    
    # Step 5: Return the result
    return result_sentence
end
