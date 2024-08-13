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
function split_words(txt::String)::Union{Vector{<:AbstractString}, Int}
    # Try to split on whitespace first
    split_txt = split(txt, r"\s")
    if !isempty(split_txt)
        return split_txt
    end

    # If no whitespace, try to split on commas
    split_txt = split(txt, ",")
    if !isempty(split_txt)
        return split_txt
    end

    # If no commas, count lower-case letters with odd order in the alphabet
    count = 0
    for char in txt
        if 'a' <= char <= 'z' && isodd(Int(char) - Int('a'))
            count += 1
        end
    end
    return count
end
