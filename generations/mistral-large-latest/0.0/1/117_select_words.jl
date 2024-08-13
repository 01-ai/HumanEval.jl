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
function select_words(s::String, n::Int)::Vector{SubString{String}}
    function isconsonant(c::Char)
        return ('a' <= c <= 'z' || 'A' <= c <= 'Z') && c != 'a' && c != 'e' && c != 'i' && c != 'o' && c != 'u'
    end

    words = split(s)
    result = SubString{String}[]

    for word in words
        consonant_count = 0
        for c in word
            if isconsonant(c)
                consonant_count += 1
            end
        end
        if consonant_count == n
            push!(result, word)
        end
    end

    return result
end