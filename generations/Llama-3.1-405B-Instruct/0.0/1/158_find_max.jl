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
    # Initialize the maximum word and its unique character count
    max_word = ""
    max_unique_chars = 0

    # Iterate over each word in the list
    for word in words
        # Count the number of unique characters in the word
        unique_chars = length(unique(word))

        # If this word has more unique characters than the current max,
        # or if it has the same number of unique characters but comes first
        # in lexicographical order, update the max word
        if unique_chars > max_unique_chars || (unique_chars == max_unique_chars && word < max_word)
            max_word = word
            max_unique_chars = unique_chars
        end
    end

    # Return the word with the maximum number of unique characters
    return max_word
end
