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
    words = split(s)
    hist = Dict{String, Int}()
    max_count = 0

    for word in words
        hist[word] = get(hist, word, 0) + 1
        max_count = max(max_count, hist[word])
    end

    most_frequent = Dict{String, Int}()
    for (k, v) in hist
        if v == max_count
            most_frequent[k] = v
        end
    end

    return most_frequent
end
