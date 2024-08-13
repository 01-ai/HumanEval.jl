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
    # Check if there are any whitespaces in the text
    if occursin(r"\s", txt)
        # Split on whitespace
        return split(txt)
    # Check if there are any commas in the text
    elseif occursin(",", txt)
        # Split on commas
        return split(txt, ",")
    else
        # Count the number of lower-case letters with odd order in the alphabet
        count = 0
        for c in txt
            if islowercase(c) && (Int(c) - Int('a')) % 2 == 1
                count += 1
            end
        end
        return count
    end
end
