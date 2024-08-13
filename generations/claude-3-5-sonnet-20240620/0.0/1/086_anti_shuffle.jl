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
    words = split(s)
    
    # Function to sort characters in a word
    sort_word(word) = join(sort(collect(word)))
    
    # Apply sorting to each word
    sorted_words = map(sort_word, words)
    
    # Reconstruct the string with sorted words
    result = ""
    word_index = 1
    
    for (i, char) in enumerate(s)
        if !isspace(char)
            result *= sorted_words[word_index][1]
            sorted_words[word_index] = sorted_words[word_index][2:end]
            if sorted_words[word_index] == ""
                word_index += 1
            end
        else
            result *= char
        end
    end
    
    return result
end
println(anti_shuffle("Hi"))  # Output: Hi
println(anti_shuffle("hello"))  # Output: ehllo
println(anti_shuffle("Hello World!!!"))  # Output: eHllo !!!Wdlor
