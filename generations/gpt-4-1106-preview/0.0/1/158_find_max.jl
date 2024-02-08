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
    # Initialize variables to keep track of the word with the maximum number of unique characters
    # and the maximum number of unique characters found so far.
    max_unique_chars = 0
    max_word = ""

    for word in words
        # Create a set of characters to find the number of unique characters in the word.
        unique_chars = length(Set(word))

        # Update the max_word if the current word has more unique characters,
        # or if it has the same number but comes first in lexicographical order.
        if unique_chars > max_unique_chars || (unique_chars == max_unique_chars && word < max_word)
            max_unique_chars = unique_chars
            max_word = word
        end
    end

    return max_word
end

# Examples
println(find_max(["name", "of", "string"])) # Output: "string"
println(find_max(["name", "enam", "game"])) # Output: "enam"
println(find_max(["aaaaaaa", "bb", "cc"]))  # Output: "aaaaaaa"
