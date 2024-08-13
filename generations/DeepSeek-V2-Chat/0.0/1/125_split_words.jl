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
    if occursin(r"\s", txt)
        return split(txt)
    elseif occursin(",", txt)
        return split(txt, ",")
    else
        count = 0
        for char in txt
            if islowercase(char)
                if (Int(char) - Int('a')) % 2 == 1
                    count += 1
                end
            end
        end
        return count
    end
end
