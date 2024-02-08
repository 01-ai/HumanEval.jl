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
    consonants = "bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ"
    words = split(s, ' ')
    result = []

    for word in words
        count = 0
        for c in word
            if !ismatch(r"[aeiou]", c) && ismatch(r"$consonants", c)
                count += 1
            end
        end
        if count == n
            push!(result, word)
        end
    end

    return result
end
