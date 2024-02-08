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
    # Initialize an empty vector to store the words with n consonants
    words_with_n_consonants = Vector{AbstractString}()

    # Split the input string into words
    words = split(s)

    # Iterate over each word
    for word in words
        # Count the number of consonants in the word
        num_consonants = count(c -> c ∈ 'b':'z' || c ∈ 'B':'Z', word)

        # If the word contains exactly n consonants, push it to the vector
        if num_consonants == n
            push!(words_with_n_consonants, word)
        end
    end

    # Return the vector of words with n consonants
    return words_with_n_consonants
end
