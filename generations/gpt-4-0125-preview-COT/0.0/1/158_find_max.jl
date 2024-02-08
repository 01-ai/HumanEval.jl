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
    # Step 1: Initialize variables
    max_word = ""
    max_unique_chars = 0
    
    # Step 2: Iterate through words
    for word in words
        # Step 2a: Count unique characters
        unique_chars_count = length(Set(word))
        
        # Step 2b: Update maximum
        if unique_chars_count > max_unique_chars || (unique_chars_count == max_unique_chars && word < max_word)
            max_word = word
            max_unique_chars = unique_chars_count
        end
    end
    
    # Step 3: Return result
    return max_word
end
