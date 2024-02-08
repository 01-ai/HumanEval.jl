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
    # Initialize an empty vector to store the selected words
    selected_words = Vector{SubString{String}}()

    # Loop through the string, character by character
    for i in 1:length(s)
        # If the current character is a space, it's the start of a new word
        if s[i] == ' '
            # If the current word has exactly n consonants, add it to the list
            if length(selected_words) == n
                push!(selected_words, s[i-n+1:i-1])
            end
            # Reset the current word to the next part of the string
            i += n - 1
        end
    end

    # If the last word has exactly n consonants, add it to the list
    if length(selected_words) == n - 1
        push!(selected_words, s[end-n+1:end])
    end

    # Return the list of selected words
    return selected_words
end
