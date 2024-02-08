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
    words = split(s, r"[ ,]")
    filter!(x -> !isempty(x), words)
    return words
end

# Test cases
@test words_string("Hi, my name is John") == ["Hi", "my", "name", "is", "John"]
@test words_string("One, two, three, four, five, six") == ["One", "two", "three", "four", "five", "six"]
@test words_string("This, is a test, for split function") == ["This", "is", "a", "test", "for", "split", "function"]
@test words_string("") == String[]
@test words_string("   ") == String[]
@test words_string(" , ") == String[]
@test words_string(" , one, two, ") == ["one", "two"]
@test words_string("one, two, , three, , four, , ") == ["one", "two", "three", "four"]

