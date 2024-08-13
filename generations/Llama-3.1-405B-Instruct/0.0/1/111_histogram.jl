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
    # Split the input string into individual letters
    letters = split(s, " ")
    
    # Create an empty dictionary to store the letter counts
    counts = Dict{String, Int}()
    
    # Iterate over each letter and update the count in the dictionary
    for letter in letters
        if haskey(counts, letter)
            counts[letter] += 1
        else
            counts[letter] = 1
        end
    end
    
    # Find the maximum count
    max_count = maximum(values(counts), init=0)
    
    # Filter the dictionary to only include letters with the maximum count
    result = filter((k, v) -> v == max_count, counts)
    
    return result
end
