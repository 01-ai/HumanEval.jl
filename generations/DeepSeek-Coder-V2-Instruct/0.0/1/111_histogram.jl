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
    # Split the string into individual words
    words = split(s)
    
    # Create a dictionary to count occurrences of each word
    word_counts = Dict{String, Int}()
    
    # Count the occurrences of each word
    for word in words
        if haskey(word_counts, word)
            word_counts[word] += 1
        else
            word_counts[word] = 1
        end
    end
    
    # Find the maximum count
    max_count = maximum(values(word_counts))
    
    # Filter the dictionary to include only words with the maximum count
    result = Dict(word => count for (word, count) in word_counts if count == max_count)
    
    return result
end
