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
    # Split the string into words
    words = split(s)

    # Create a dictionary to store the count of each word
    count_dict = Dict{String, Int}()

    # Iterate over each word in the string
    for word in words
        # If the word is already in the dictionary, increment its count
        if haskey(count_dict, word)
            count_dict[word] += 1
        # Otherwise, add the word to the dictionary with a count of 1
        else
            count_dict[word] = 1
        end
    end

    # Find the maximum count
    max_count = maximum(values(count_dict))

    # Create a new dictionary with only the words that have the maximum count
    max_dict = Dict{String, Int}(word => count for (word, count) in count_dict if count == max_count)

    return max_dict
end

# Test the function
println(histogram("a b c"))
println(histogram("a b b a"))
println(histogram("a b c a b"))
println(histogram("b b b b a"))
println(histogram(""))
