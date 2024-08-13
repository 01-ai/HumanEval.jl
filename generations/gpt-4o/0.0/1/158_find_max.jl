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
    # Function to count unique characters in a word
    unique_count(word::String) = length(Set(word))
    
    # Sort words first by unique character count (descending) and then lexicographically
    sorted_words = sort(words, by = w -> (-unique_count(w), w))
    
    # Return the first word in the sorted list
    return sorted_words[1]
end

# Examples
println(find_max(["name", "of", "string"]))  # "string"
println(find_max(["name", "enam", "game"]))  # "enam"
println(find_max(["aaaaaaa", "bb", "cc"]))   # "aaaaaaa"
