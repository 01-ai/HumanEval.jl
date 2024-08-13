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
    # Split the string into individual letters
    letters = split(s)
    
    # Count occurrences of each letter
    counts = Dict{String, Int}()
    for letter in letters
        counts[letter] = get(counts, letter, 0) + 1
    end
    
    # Find the maximum count
    max_count = isempty(counts) ? 0 : maximum(values(counts))
    
    # Create a new dictionary with only the letters that have the maximum count
    result = Dict{String, Int}()
    for (letter, count) in counts
        if count == max_count
            result[letter] = count
        end
    end
    
    return result
end
println(histogram("a b c"))
println(histogram("a b b a"))
println(histogram("a b c a b"))
println(histogram("b b b b a"))
println(histogram(""))
