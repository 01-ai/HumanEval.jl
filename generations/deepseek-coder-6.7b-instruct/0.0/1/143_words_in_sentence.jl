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
    words = split(sentence, " ")
    isprime(n) = n ≠ 1 && all(n .% 1:n-1 .≠ 0)
    primes = filter(isprime, [length(word) for word in words])
    return join(words[i] for i in primes)
end
