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
    # Split the string into an array of lowercase letters
    letters = split(lowercase(s))

    # Initialize an empty dictionary to store the histogram
    hist = Dict{String, Int}()

    # Iterate over the letters in the array
    for letter in letters
        # If the letter is not in the dictionary, add it with a count of 1
        if !haskey(hist, letter)
            hist[letter] = 1
        # If the letter is already in the dictionary, increment its count
        else
            hist[letter] += 1
        end
    end

    # Find the maximum count in the dictionary
    max_count = maximum(values(hist))

    # Filter the dictionary to only include letters with the maximum count
    hist = Dict(letter => count for (letter, count) in hist if count == max_count)

    return hist
end
