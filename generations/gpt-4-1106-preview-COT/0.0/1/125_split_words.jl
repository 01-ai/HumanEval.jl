"""
    split_words(txt::String)::Union{Vector{<:AbstractString},Int}

Given a string of words, return a list of words split on whitespace, if no
whitespaces exists in the text you should split on commas "," if no commas
exists you should return the number of lower-case letters with odd order in the
alphabet, ord("a") = 0, ord("b") = 1, ... ord("z") = 25

# Examples

```jldoctest
julia> split_words("Hello world!")
2-element Vector{SubString{String}}:
 "Hello"
 "world!"

julia> split_words("Hello,world!")
2-element Vector{SubString{String}}:
 "Hello"
 "world!"

julia> split_words("abcdef")
3
```
"""

To implement the `split_words` function, we will follow these steps:

1. Check if the input string `txt` contains any whitespace characters. If it does, split the string on whitespace and return the resulting list of words.
2. If there are no whitespace characters, check if the string contains any commas. If it does, split the string on commas and return the resulting list of words.
3. If there are no whitespace characters or commas, count the number of lowercase letters in the string that have an odd order in the alphabet. To do this, iterate over each character in the string, check if it is a lowercase letter, calculate its order, and determine if the order is odd. Keep a count of such characters.
4. Return the count of lowercase letters with an odd order in the alphabet.

Now, let's write the code for the `split_words` function following the outline above.
