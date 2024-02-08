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
    # Initialize the maximum number of unique characters and the result string
    max_unique_chars = 0
    result = ""

    # Iterate through each word in the list
    for word in words
        # Count the unique characters in the word
        unique_chars = length(unique(word))

        # If the current word has more unique characters than the previous maximum, update the result
        if unique_chars > max_unique_chars
            max_unique_chars = unique_chars
            result = word
        # If the current word has the same number of unique characters as the previous maximum, update the result if it comes first in lexicographical order
        elseif unique_chars == max_unique_chars && word < result
            result = word
        end
    end

    # Return the result
    return result
end
