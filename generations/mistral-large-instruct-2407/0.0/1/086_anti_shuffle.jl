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
    words = split(s, ' ')

    # Function to sort characters in a word
    sort_word(word::String)::String = join(sort(collect(word)))

    # Apply the sort_word function to each word
    sorted_words = map(sort_word, words)

    # Join the sorted words back into a single string with spaces
    return join(sorted_words, ' ')
end

# Testing the function with the provided examples
println(anti_shuffle("Hi"))          # Output: "Hi"
println(anti_shuffle("hello"))       # Output: "ehllo"
println(anti_shuffle("Hello World!!!") # Output: "Hello !!!Wdlor"
