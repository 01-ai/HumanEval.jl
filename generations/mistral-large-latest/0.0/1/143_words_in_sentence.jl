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
function isprime(n::Int)
    if n < 2
        return false
    elseif n < 4
        return true
    elseif n % 2 == 0
        return false
    else
        for d in 3:2:isqrt(n)
            if n % d == 0
                return false
            end
        end
        return true
    end
end

function words_in_sentence(sentence::String)::String
    words = split(sentence)
    result = []
    for word in words
        if isprime(length(word))
            push!(result, word)
        end
    end
    return join(result, " ")
end
