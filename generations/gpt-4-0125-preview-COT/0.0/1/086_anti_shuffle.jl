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
    # Step 1: Split the string into words
    words = split(s, ' ', keepempty=false)
    
    # Step 2: Sort characters in each word
    sorted_words = [join(sort(collect(word))) for word in words]
    
    # Step 3: Reassemble the string
    # To maintain original spaces, we replace the original words with their sorted versions
    result_string = s
    for (original, sorted) in zip(words, sorted_words)
        result_string = replace(result_string, original => sorted, count=1)
    end
    
    return result_string
end
