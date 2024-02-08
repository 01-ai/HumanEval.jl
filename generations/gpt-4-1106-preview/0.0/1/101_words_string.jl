"""
    words_string(s::String)::Vector{String}

You will be given a string of words separated by commas or spaces. Your task is
to split the string into words and return an array of the words. Results
shouldn't contain empty string.

# Example

```jldoctest
julia> words_string("Hi, my name is John")
5-element Vector{String}:
 "Hi"
 "my"
 "name"
 "is"
 "John"

julia> words_string("One, two, three, four, five, six")
6-element Vector{String}:
 "One"
 "two"
 "three"
 "four"
 "five"
 "six"
```
"""
function words_string(s::String)::Vector{String}
    # Split the string by commas and spaces, and filter out any empty strings
    words = split(s, r"[, ]+", keepempty=false)
    return words
end

# Example usage:
println(words_string("Hi, my name is John"))
println(words_string("One, two, three, four, five, six"))
