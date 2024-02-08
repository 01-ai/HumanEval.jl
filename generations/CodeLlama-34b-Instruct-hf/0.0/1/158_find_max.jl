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
    # Create a dictionary to keep track of the number of unique characters in each word
    char_counts = Dict{String, Int}()
    for word in words
        char_counts[word] = length(unique(word))
    end

    # Find the word with the maximum number of unique characters
    max_word = ""
    max_count = 0
    for (word, count) in char_counts
        if count > max_count
            max_word = word
            max_count = count
        end
    end

    # Return the word with the maximum number of unique characters
    return max_word
end
