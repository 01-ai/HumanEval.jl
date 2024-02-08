"""
    histogram(s::String)::Dict{String, Int}

Given a string representing a space separated lowercase letters, return a
dictionary of the letter with the most repetition and containing the
corresponding count. If several letters have the same occurrence, return all of
them.

# Examples

```jldoctest
julia> histogram("a b c")
Dict{String, Int64} with 3 entries:
  "c" => 1
  "b" => 1
  "a" => 1

julia> histogram("a b b a")
Dict{String, Int64} with 2 entries:
  "b" => 2
  "a" => 2

julia> histogram("a b c a b")
Dict{String, Int64} with 2 entries:
  "b" => 2
  "a" => 2

julia> histogram("b b b b a")
Dict{String, Int64} with 1 entry:
  "b" => 4

julia> histogram("")
Dict{String, Int64}()
```
"""
function histogram(s::String)::Dict{String, Int}
    # Split the string into an array of words
    words = split(s)

    # Create a dictionary to store the count of each word
    word_count = Dict{String, Int}()

    # Iterate through each word in the array
    for word in words
        # If the word is already in the dictionary, increment its count
        if haskey(word_count, word)
            word_count[word] += 1
        # If the word is not in the dictionary, add it with a count of 1
        else
            word_count[word] = 1
        end
    end

    # Find the maximum count in the dictionary
    max_count = maximum(values(word_count))

    # Create a dictionary to store the words with the maximum count
    max_count_words = Dict{String, Int}()

    # Iterate through each word in the dictionary
    for (word, count) in word_count
        # If the word's count is equal to the maximum count, add it to the max_count_words dictionary
        if count == max_count
            max_count_words[word] = count
        end
    end

    # Return the dictionary of words with the maximum count
    return max_count_words
end
