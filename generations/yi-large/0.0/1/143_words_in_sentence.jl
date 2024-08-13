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
    
    # Filter the words to keep only those whose lengths are prime numbers
    prime_words = filter(word -> isprime(length(word)), words)
    
    # Join the prime words back into a string separated by spaces
    return join(prime_words, " ")
end

# Helper function to check if a number is prime
function isprime(n::Integer)::Bool
    if n <= 1
        return false
    elseif n <= 3
        return true
    elseif n % 2 == 0 || n % 3 == 0
        return false
    endif
    
    i = 5
    while i * i <= n
        if n % i == 0 || n % (i + 2) == 0
            return false
        end
        i += 6
    end
    
    return true
end

# Example usage
println(words_in_sentence("This is a test")) # Output: "is"
println(words_in_sentence("lets go for swimming")) # Output: "go for"
