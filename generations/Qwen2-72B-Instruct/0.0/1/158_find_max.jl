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
    # Initialize the maximum number of unique characters to 0
    max_unique_chars = 0
    # Initialize the result string
    result = ""

    for word in words
        # Create a Set from the word to remove duplicate characters
        unique_chars = Set(word)
        # Get the number of unique characters
        num_unique_chars = length(unique_chars)

        # Check if the current word has more unique characters than the current maximum
        # or if it has the same number of unique characters but comes first in lexicographical order
        if num_unique_chars > max_unique_chars || (num_unique_chars == max_unique_chars && word < result)
            max_unique_chars = num_unique_chars
            result = word
        end
    end

    return result
end
