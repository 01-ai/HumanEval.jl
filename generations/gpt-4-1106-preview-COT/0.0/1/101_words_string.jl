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
    # Step 2: Split the string using a regular expression that matches commas and spaces
    words = split(s, r"[, ]+", keepempty=false)
    
    # Step 3: The split function with keepempty=false option already filters out empty strings
    
    # Step 4: Return the array of words
    return words
end
