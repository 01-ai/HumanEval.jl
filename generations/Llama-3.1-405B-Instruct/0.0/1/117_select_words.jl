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

Given a string `s` and a natural number `n`, returns a list of all words from string `s` that contain exactly
`n` consonants, in order these words appear in the string `s`. If the string `s` is empty then the function should return an empty list.

Note: assumes the input string contains only letters and spaces.
"""
function select_words(s::String, n::Int)::Vector{<:AbstractString}
    # Split the input string into words
    words = split(s)

    # Initialize an empty vector to store the result
    result = Vector{SubString{String}}()

    # Iterate over each word
    for word in words
        # Initialize a counter for consonants
        consonant_count = 0

        # Iterate over each character in the word
        for char in word
            # Check if the character is a consonant (i.e., not a vowel)
            if lowercase(char) ∉ ['a', 'e', 'i', 'o', 'u']
                consonant_count += 1
            end
        end

        # If the word has exactly n consonants, add it to the result
        if consonant_count == n
            push!(result, word)
        end
    end

    # Return the result
    return result
end
