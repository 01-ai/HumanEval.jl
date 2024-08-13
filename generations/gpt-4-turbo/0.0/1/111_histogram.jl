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
    # Split the string by spaces to get individual letters
    letters = split(s)
    
    # Create a dictionary to count occurrences of each letter
    counts = Dict{String, Int}()
    for letter in letters
        counts[letter] = get(counts, letter, 0) + 1
    end
    
    # Determine the maximum count
    max_count = maximum(values(counts); init=0)
    
    # Filter the dictionary to keep only the letters with the maximum count
    max_counts = Dict{String, Int}()
    for (letter, count) in counts
        if count == max_count
            max_counts[letter] = count
        end
    end
    
    return max_counts
end
