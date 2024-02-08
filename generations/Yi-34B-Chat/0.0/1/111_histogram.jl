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
    # Initialize an empty dictionary to store the counts
    counts = Dict{String, Int}()

    # Loop over the characters in the string
    for c in s
        # If the character is not in the dictionary, add it with a count of 1
        if !haskey(counts, c)
            counts[c] = 1
        # If the character is already in the dictionary, increment its count
        else
            counts[c] += 1
        end
    end

    # Sort the dictionary by value (count) in descending order
    sorted_counts = sort(counts, by=values)

    # If there are multiple letters with the highest count, return them all
    if length(sorted_counts) > 1
        return Dict(sorted_counts[end])
    else
        # If there is only one letter with the highest count, return it
        return Dict(sorted_counts[1])
    end
end
