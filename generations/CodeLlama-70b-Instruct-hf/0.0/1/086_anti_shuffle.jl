"""
    anti_shuffle(s::String)::String

Write a function that takes a string and returns an ordered version of it.
Ordered version of string, is a string where all words (separated by space) are
replaced by a new word where all the characters arranged in ascending order
based on ascii value.

Note: You should keep the order of words and blank spaces in the sentence.

# Examples:

```jldoctest
julia> anti_shuffle("Hi")
"Hi"

julia> anti_shuffle("hello")
"ehllo"

julia> anti_shuffle("Hello World!!!")
"Hello !!!Wdlor"
```
"""
function anti_shuffle(s::String)::String
    # Split the string into words
    words = split(s)

    # Sort each word and join them back into a string
    sorted_words = join([join(sort(word), "") for word in words])

    # Replace the original words with sorted words
    sorted_s = replace(s, Regex("\\S+") => sorted_words)

    return sorted_s
end
