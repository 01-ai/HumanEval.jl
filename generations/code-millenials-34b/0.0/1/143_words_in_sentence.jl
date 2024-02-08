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



# Solution
function words_in_sentence(sentence::String)::String
    words = split(sentence)
    prime_words = String[]
    for word in words
        length_word = length(word)
        if length_word ∈ [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]
            push!(prime_words, word)
        end
    end
    return join(prime_words, " ")
end

# Test cases
println(words_in_sentence("This is a test"))
println(words_in_sentence("lets go for swimming"))
