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
    max_word = ""
    max_unique_chars = 0

    for word in words
        unique_chars = length(Set(word))
        if unique_chars > max_unique_chars
            max_unique_chars = unique_chars
            max_word = word
        elseif unique_chars == max_unique_chars
            if word < max_word
                max_word = word
            end
        end
    end

    return max_word
end
println(find_max(["name", "of", "string"]))  # Should return "string"
println(find_max(["name", "enam", "game"]))  # Should return "enam"
println(find_max(["aaaaaaa", "bb", "cc"]))   # Should return "aaaaaaa"
