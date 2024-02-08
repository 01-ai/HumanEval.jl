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
    # Split the string into words
    words = split(s, ' ', keepempty=true)
    
    # Sort the characters in each word
    sorted_words = [join(sort(collect(word))) for word in words]
    
    # Join the sorted words back into a single string
    sorted_string = join(sorted_words, ' ')
    
    return sorted_string
end
println(anti_shuffle("Hi")) # Should return "Hi"
println(anti_shuffle("hello")) # Should return "ehllo"
println(anti_shuffle("Hello World!!!")) # Should return "Hello !!!Wdlor"
