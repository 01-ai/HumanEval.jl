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
    # Define a set of consonants
    consonants = Set("bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ")

    # Function to count consonants in a word
    function count_consonants(word::String)::Int
        count = 0
        for char in word
            if char in consonants
                count += 1
            end
        end
        return count
    end

    # Split the string into words
    words = split(s)

    # Filter words that have exactly `n` consonants
    result = filter(word -> count_consonants(word) == n, words)

    return result
end
