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
function split_words(txt::String)::Union{Vector{<:AbstractString},Int}
    # Check if the text contains any whitespace or comma
    if occursin(' ', txt) || occursin(',', txt)
        # Split the text on whitespace or comma
        words = split(txt)
        # Return the list of words
        return words
    else
        # If no whitespace or comma is found, count the number of lower-case
        # letters with odd order in the alphabet
        letter_count = 0
        for letter in txt
            if islower(letter)
                letter_count += 1
            end
        end
        # Return the count of odd-order lower-case letters
        return letter_count
    end
end
