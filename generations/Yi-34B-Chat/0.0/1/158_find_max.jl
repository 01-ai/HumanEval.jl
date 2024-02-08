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
    # Initialize an empty dictionary to count unique characters for each word
    unique_char_counts = Dict{Char, Int}()
    
    # Loop through each word and count its unique characters
    for word in words
        # Initialize a counter for each character in the word
        for char in word
            # If the character is not present in the dictionary, add it with a count of 1
            if !haskey(unique_char_counts, char)
                unique_char_counts[char] = 1
            # If the character is present, increment its count
            else
                unique_char_counts[char] += 1
            end
        end
    end
    
    # Initialize an empty list to store words with maximum unique characters
    max_unique_words = Vector{String}()
    
    # Loop through the dictionary and find words with maximum unique characters
    for (char, count) in unique_char_counts
        # If the count is greater than the current maximum unique characters count,
        # update the maximum and the corresponding words
        if count > length(max_unique_words)
            max_unique_words = [word for word in words if word[end] == char]
        end
    end
    
    # If there are multiple words with maximum unique characters, return the first one
    return max_unique_words[1]
end
