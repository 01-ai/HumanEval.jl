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
function select_words(s::String, n::Int)::Vector{<:AbstractString}
    # Define the set of consonants
    consonants = Set("bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ")

    # Split the string into words
    words = split(s)

    # Filter the words that contain exactly n consonants
    selected_words = filter(word -> count(c -> c in consonants, word) == n, words)

    return selected_words
end