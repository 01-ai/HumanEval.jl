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
    letters = split(lowercase(s), " ")
    
    # Create a dictionary to store the letter counts
    letter_counts = Dict{String, Int}()
    
    # Count the occurrences of each letter
    for letter in letters
        if letter in keys(letter_counts)
            letter_counts[letter] += 1
        else
            letter_counts[letter] = 1
        end
    end
    
    # Find the maximum count
    max_count = isempty(letter_counts) ? 0 : maximum(values(letter_counts))
    
    # Filter the dictionary to only include letters with the maximum count
    return Dict(k => v for (k, v) in letter_counts if v == max_count)
end

# Examples
println(histogram("a b c"))
println(histogram("a b b a"))
println(histogram("a b c a b"))
println(histogram("b b b b a"))
println(histogram(""))
