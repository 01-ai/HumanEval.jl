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
    max_unique_chars = 0
    max_word = ""

    for word in words
        num_unique_chars = length(unique(word))
        if num_unique_chars > max_unique_chars
            max_unique_chars = num_unique_chars
            max_word = word
        elseif num_unique_chars == max_unique_chars
            max_word = min(max_word, word)
        end
    end

    return max_word
end

# Test cases
println(find_max(["name", "of", "string"])) # "string"
println(find_max(["name", "enam", "game"])) # "enam"
println(find_max(["aaaaaaa", "bb", "cc"])) # "aaaaaaa"

