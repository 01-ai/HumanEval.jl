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
    # Split the string into words
    words = split(s)
    
    # Create an empty dictionary to store the counts
    counts = Dict{String, Int}()
    
    # Count the occurrences of each word
    for word in words
        counts[word] = get(counts, word, 0) + 1
    end
    
    # Find the maximum count
    max_count = isempty(counts) ? 0 : maximum(values(counts))
    
    # Create a new dictionary with words having the maximum count
    result = Dict{String, Int}()
    for (word, count) in counts
        if count == max_count
            result[word] = count
        end
    end
    
    return result
end
