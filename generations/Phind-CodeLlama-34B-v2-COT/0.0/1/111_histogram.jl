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
    # Step 1: Initialize an empty dictionary to store the frequency of each letter.
    freq = Dict{String, Int}()

    # Step 2: Split the input string into individual letters.
    letters = split(s)

    # Step 3: Iterate over the letters and increment their count in the dictionary.
    for letter in letters
        if haskey(freq, letter)
            freq[letter] += 1
        else
            freq[letter] = 1
        end
    end

    # Step 4: Find the maximum count in the dictionary.
    max_count = maximum(values(freq), init=0)

    # Step 5: Iterate over the dictionary and add all the letters with the maximum count to the output dictionary.
    output = Dict{String, Int}()
    for (letter, count) in freq
        if count == max_count
            output[letter] = count
        end
    end

    return output
end
