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
    words = split(s, " ")

    # Create a new string with ordered characters
    ordered_words = []
    for word in words
        ordered_word = ""
        for char in word
            ascii_value = convert(Int, char)
            ordered_word *= char
            if ascii_value > 0
                ordered_word *= char
            end
        end
        push!(ordered_words, ordered_word)
    end

    # Join the ordered words with spaces
    return join(ordered_words, " ")
end
