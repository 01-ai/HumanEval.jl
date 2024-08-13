"""
    find_max(words::Vector{String})::String

Write a function that accepts a list of strings. The list contains different
words. Return the word with maximum number of unique characters. If multiple
strings have maximum number of unique characters, return the one which comes
first in lexicographical order.

# Examples

```jldoctest
julia> find_max(["name", "of", "string"])
"string"

julia> find_max(["name", "enam", "game"])
"enam"

julia> find_max(["aaaaaaa", "bb", "cc"])
"aaaaaaa"
```
"""
function find_max(words::Vector{String})::String
    # Initialize variables to track the word with the maximum unique characters
    max_unique_count = 0
    result_word = ""
    
    for word in words
        # Calculate the number of unique characters in the current word
        unique_chars = length(Set(word))
        
        # Check if this word has more unique characters or if it's lexicographically smaller with the same count
        if unique_chars > max_unique_count || (unique_chars == max_unique_count && word < result_word)
            max_unique_count = unique_chars
            result_word = word
        end
    end
    
    return result_word
end
