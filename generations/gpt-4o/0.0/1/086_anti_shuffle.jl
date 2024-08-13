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
    # Split the string into words and spaces
    words = split(s, r"(\s+)", keepempty=true)
    
    # Sort the characters in each word
    sorted_words = [all(isletter, word) ? join(sort(collect(word))) : word for word in words]
    
    # Join the sorted words back together
    return join(sorted_words)
end
println(anti_shuffle("Hi"))            # Output: "Hi"
println(anti_shuffle("hello"))         # Output: "ehllo"
println(anti_shuffle("Hello World!!!")) # Output: "Hello !!!Wdlor"