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
    # Split the string into a list of characters
    chars = split(s, " ")

    # Create a dictionary to store the frequency of each character
    freq_dict = Dict{String, Int}()

    # Iterate over each character in the list
    for char in chars
        # If the character is already in the dictionary, increment its count
        if haskey(freq_dict, char)
            freq_dict[char] += 1
        # Otherwise, add the character to the dictionary with a count of 1
        else
            freq_dict[char] = 1
        end
    end

    # Find the maximum frequency
    max_freq = maximum(values(freq_dict))

    # Create a new dictionary to store the characters with the maximum frequency
    result_dict = Dict{String, Int}()

    # Iterate over each character and its count in the frequency dictionary
    for (char, freq) in freq_dict
        # If the count is equal to the maximum frequency, add the character to the result dictionary
        if freq == max_freq
            result_dict[char] = freq
        end
    end

    return result_dict
end
