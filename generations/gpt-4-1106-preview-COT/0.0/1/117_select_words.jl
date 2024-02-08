"""
    select_words(s::String, n::Int)::Vector{<:AbstractString}

Given a string `s` and a natural number `n`, you have been tasked to implement a
function that returns a list of all words from string `s` that contain exactly
`n` consonants, in order these words appear in the string `s`. If the string `s`
is empty then the function should return an empty list.

Note: you may assume the input string contains only letters and spaces.

# Examples

```jldoctest
julia> select_words("Mary had a little lamb", 4)
1-element Vector{SubString{String}}:
 "little"

julia> select_words("Mary had a little lamb", 3)
2-element Vector{SubString{String}}:
 "Mary"
 "lamb"

julia> select_words("simple white space", 2)
SubString{String}[]

julia> select_words("Hello world", 4)
1-element Vector{SubString{String}}:
 "world"

julia> select_words("Uncle sam", 3)
1-element Vector{SubString{String}}:
 "Uncle"
```
"""

### Outline

To implement the `select_words` function, we will follow these steps:

1. Define the function `select_words` with the appropriate signature.
2. Check if the input string `s` is empty. If it is, return an empty list.
3. Split the string `s` into words using whitespace as the delimiter.
4. Initialize an empty list to store words with exactly `n` consonants.
5. Iterate over each word in the list of words.
6. For each word, count the number of consonants.
7. If the number of consonants is equal to `n`, add the word to the list of selected words.
8. Return the list of selected words.

### Code

Now, let's write the code for the `select_words` function.
