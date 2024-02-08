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
    # Split the string into words
    words = split(s)

    # Initialize an empty list to store the words with n consonants
    result = []

    # Iterate through each word
    for word in words
        # Initialize a counter for consonants
        consonants = 0

        # Iterate through each character in the word
        for char in word
            # Check if the character is a consonant
            if char != 'a' && char != 'e' && char != 'i' && char != 'o' && char != 'u'
                consonants += 1
            end
        end

        # If the number of consonants is equal to n, add the word to the result list
        if consonants == n
            push!(result, word)
        end
    end

    # Return the result list
    return result
end
