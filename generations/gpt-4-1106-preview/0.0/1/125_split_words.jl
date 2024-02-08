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
    # Check for whitespace and split if present
    if occursin(r"\s", txt)
        return split(txt)
    end
    
    # Check for commas and split if present
    if occursin(",", txt)
        return split(txt, ",")
    end
    
    # Count the number of lowercase letters with odd order in the alphabet
    return count(c -> islower(c) && (Int(c) - Int('a')) % 2 == 1, txt)
end

# Examples
println(split_words("Hello world!")) # Should print ["Hello", "world!"]
println(split_words("Hello,world!")) # Should print ["Hello", "world!"]
println(split_words("abcdef"))       # Should print 3
