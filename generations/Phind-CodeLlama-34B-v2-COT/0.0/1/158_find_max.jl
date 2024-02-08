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
    max_unique_count = 0
    max_word = ""

    for word in words
        unique_count = length(unique(word))
        if unique_count > max_unique_count
            max_unique_count = unique_count
            max_word = word
        elseif unique_count == max_unique_count
            max_word = min(max_word, word)
        end
    end

    return max_word
end
