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
    words = split(s)
    return filter(x -> !isempty(x), words)
end
