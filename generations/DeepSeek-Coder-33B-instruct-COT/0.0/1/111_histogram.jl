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
    # Initialize an empty dictionary
    hist = Dict{String, Int}()

    # Split the string into words
    words = split(s)

    # Iterate over each word
    for word in words
        # If the word is already in the dictionary, increment its count
        if haskey(hist, word)
            hist[word] += 1
        # Otherwise, add the word to the dictionary with a count of 1
        else
            hist[word] = 1
        end
    end

    # Find the maximum count
    max_count = maximum(values(hist))

    # Filter the dictionary to only include words with the maximum count
    hist = filter((k, v) -> v == max_count, hist)

    return hist
end
