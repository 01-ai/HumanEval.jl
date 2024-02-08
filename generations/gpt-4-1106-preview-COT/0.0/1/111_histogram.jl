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
    # Step 2: Initialize an empty dictionary
    letter_counts = Dict{String, Int}()
    
    # Step 3: Split the string into letters
    letters = split(s)
    
    # Step 4: Iterate over each letter and count occurrences
    for letter in letters
        letter_counts[letter] = get(letter_counts, letter, 0) + 1
    end
    
    # Step 5: Find the maximum count
    max_count = maximum(values(letter_counts), init=0)
    
    # Step 6: Filter the dictionary to only include max count letters
    max_count_letters = Dict{String, Int}()
    for (letter, count) in letter_counts
        if count == max_count
            max_count_letters[letter] = count
        end
    end
    
    # Step 7: Return the filtered dictionary
    return max_count_letters
end
