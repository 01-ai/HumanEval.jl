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
    # Split the string into letters
    letters = split(s)
    # Initialize a dictionary to count occurrences
    letter_counts = Dict{String, Int}()
    
    # Count occurrences of each letter
    for letter in letters
        letter_counts[letter] = get(letter_counts, letter, 0) + 1
    end
    
    # Find the maximum count of occurrences
    max_count = maximum(values(letter_counts); init=0)
    
    # Filter the dictionary to keep only letters with the maximum count
    max_letters = Dict{String, Int}()
    for (letter, count) in letter_counts
        if count == max_count
            max_letters[letter] = count
        end
    end
    
    return max_letters
end
