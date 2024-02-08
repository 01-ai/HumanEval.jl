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

To implement the `words_in_sentence` function, we will follow these steps:

1. Define a helper function `is_prime` that takes an integer `n` and returns `true` if `n` is a prime number, and `false` otherwise.
2. Split the input `sentence` into words using the `split` function.
3. Filter the list of words by keeping only those whose lengths are prime numbers. We will use the `is_prime` function to check the length of each word.
4. Join the filtered words back into a string, separated by spaces, using the `join` function.
5. Return the resulting string.

Now, let's write the code for the `words_in_sentence` function and the `is_prime` helper function.
