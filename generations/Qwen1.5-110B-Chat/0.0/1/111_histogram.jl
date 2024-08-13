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
    if s == ""
        return Dict{String, Int}()
    end

    letter_counts = Dict{String, Int}()
    words = split(s)

    for word in words
        if haskey(letter_counts, word)
            letter_counts[word] += 1
        else
            letter_counts[word] = 1
        end
    end

    max_count = 0
    for count in values(letter_counts)
        max_count = max(max_count, count)
    end

    most_frequent_letters = Dict{String, Int}()
    for (letter, count) in letter_counts
        if count == max_count
            most_frequent_letters[letter] = count
        end
    end

    return most_frequent_letters
end
