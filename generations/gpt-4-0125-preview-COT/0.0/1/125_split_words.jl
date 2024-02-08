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
    # Step 1: Check for Whitespaces
    if occursin(r"\s", txt)
        return split(txt)
    end

    # Step 2: Check for Commas
    if occursin(",", txt)
        return split(txt, ",")
    end

    # Step 3: Count Lower-case Letters with Odd Order
    odd_count = 0
    for char in txt
        if islower(char)
            # Convert char to its alphabetical order and check if it's odd
            order = Int(char) - Int('a')
            if order % 2 == 1
                odd_count += 1
            end
        end
    end

    # Step 4: Return the Result
    return odd_count
end
