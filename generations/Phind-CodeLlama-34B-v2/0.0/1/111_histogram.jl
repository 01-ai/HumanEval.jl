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
    # Create a dictionary to store the frequency of each letter
    freq = Dict{String, Int}()

    # Split the string into words and iterate over them
    for word in split(s)
        # If the word is already in the dictionary, increment its count
        if haskey(freq, word)
            freq[word] += 1
        else
            # Otherwise, add the word to the dictionary with count 1
            freq[word] = 1
        end
    end

    # Find the maximum count
    max_count = maximum(values(freq), init=0)

    # Filter the dictionary to only contain words with maximum count
    result = Dict{String, Int}()
    for (word, count) in freq
        if count == max_count
            result[word] = count
        end
    end

    return result
end
