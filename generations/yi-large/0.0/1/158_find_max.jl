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
    # Initialize a variable to keep track of the word with the maximum unique characters
    max_word = ""
    # Initialize a variable to keep track of the maximum number of unique characters
    max_unique_chars = 0

    # Iterate over each word in the list
    for word in words
        # Convert the word to a Set to get unique characters and then find the length
        unique_chars = length(Set(word))

        # If the current word has more unique characters than the current maximum
        # or if it has the same number of unique characters but comes first lexicographically
        if unique_chars > max_unique_chars || (unique_chars == max_unique_chars && word < max_word)
            # Update the maximum word and the maximum number of unique characters
            max_word = word
            max_unique_chars = unique_chars
        end
    end

    return max_word
end

# Example usage:
# words = ["name", "of", "string"]
# println(find_max(words))  # Output: "string"

# words = ["name", "enam", "game"]
# println(find_max(words))  # Output: "enam"

# words = ["aaaaaaa", "bb", "cc"]
# println(find_max(words))  # Output: "aaaaaaa"
