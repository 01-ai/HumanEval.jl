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
    # Helper function to count unique characters in a string
    function count_unique_chars(word::String)
        return length(Set(word))
    end

    # Initialize variables to keep track of the word with the maximum number of unique characters
    max_unique_count = 0
    max_unique_word = ""

    for word in words
        unique_count = count_unique_chars(word)
        if unique_count > max_unique_count
            max_unique_count = unique_count
            max_unique_word = word
        elseif unique_count == max_unique_count
            if word < max_unique_word
                max_unique_word = word
            end
        end
    end

    return max_unique_word
end
