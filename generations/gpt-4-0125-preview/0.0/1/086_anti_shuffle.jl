"""
    anti_shuffle(s::String)::String

Write a function that takes a string and returns an ordered version of it.
Ordered version of string, is a string where all words (separated by space) are
replaced by a new word where all the characters arranged in ascending order
based on ascii value.

Note: You should keep the order of words and blank spaces in the sentence.

# Examples:

```jldoctest
julia> anti_shuffle("Hi")
"Hi"

julia> anti_shuffle("hello")
"ehllo"

julia> anti_shuffle("Hello World!!!")
"Hello !!!Wdlor"
```
"""
function anti_shuffle(s::String)::String
    # Split the string into words, preserving spaces by using a regular expression
    words = split(s, r"(\s+)", keep=true)
    
    # Process each word: sort the characters and join them back into a string
    processed_words = [isempty(match(r"\s+", word)) ? join(sort(collect(word))) : word for word in words]
    
    # Join the processed words back into a single string
    return join(processed_words)
end

# Example usage
println(anti_shuffle("Hi")) # "Hi"
println(anti_shuffle("hello")) # "ehllo"
println(anti_shuffle("Hello World!!!")) # "Hello !!!Wdlor"
