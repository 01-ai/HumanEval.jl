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
    function is_prime(n::Int)
        n < 2 && return false
        n == 2 && return true
        for k = 2:ceil(Int, sqrt(n))
            if n % k == 0
                return false
            end
        end
        return true
    end

    join(filter(x -> is_prime(length(x)), split(sentence)), ' ')
end
