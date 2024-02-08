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
    # Step 1: Split the input string into a list of letters
    letters = split(s)
    
    # Step 2: Count occurrences of each letter
    letter_counts = Dict{String, Int}()
    for letter in letters
        letter_counts[letter] = get(letter_counts, letter, 0) + 1
    end
    
    # Return an empty dictionary if the input string is empty
    if isempty(letter_counts)
        return letter_counts
    end
    
    # Step 3: Find the maximum count
    max_count = maximum(values(letter_counts))
    
    # Step 4: Filter letters with maximum count
    max_letters = Dict{String, Int}()
    for (letter, count) in letter_counts
        if count == max_count
            max_letters[letter] = count
        end
    end
    
    # Step 5: Return the result
    return max_letters
end
