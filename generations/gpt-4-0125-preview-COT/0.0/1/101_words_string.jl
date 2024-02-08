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
    # Step 1: Replace commas with spaces and split the string by spaces
    words = split(replace(s, ',' => ' '), ' ')
    
    # Step 2: Filter out any empty strings
    filtered_words = filter(!isempty, words)
    
    # Step 3: Return the result
    return filtered_words
end
