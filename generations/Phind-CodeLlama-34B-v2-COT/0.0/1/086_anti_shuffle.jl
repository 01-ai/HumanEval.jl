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
    # Step 1: Split the input string into words
    words = split(s)

    # Step 2: For each word, sort the characters based on their ASCII values
    sorted_words = map(sort, words)

    # Step 3: Join the sorted words back into a single string
    sorted_string = join(sorted_words, " ")

    return sorted_string
end
