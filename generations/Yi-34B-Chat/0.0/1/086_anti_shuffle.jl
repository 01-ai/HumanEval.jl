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
    # Split the string into a vector of words and spaces
    words = split(s, " ")
    
    # Initialize an empty string to store the result
    result = ""
    
    # Loop through each word and reverse it
    for word in words
        # Get the characters of the word
        chars = collect(word)
        
        # Sort the characters in ascending order
        chars = sort(chars)
        
        # Join the sorted characters back into a string
        sorted_word = join(chars)
        
        # Append the sorted word to the result
        result *= sorted_word * " "
    end
    
    # Remove the trailing space if any
    result = strip(result)
    
    # Return the ordered version of the string
    return result
end
