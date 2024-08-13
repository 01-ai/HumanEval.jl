"""
    parse_music(music_string::String)::Vector{Int}

Input to this function is a string representing musical notes in a special ASCII
format. Your task is to parse this string and return list of integers
corresponding to how many beats does each not last.

Here is a legend:

  - `"o"` - whole note, lasts four beats
  - `"o|"` - half note, lasts two   - `".|"` - quater note, lasts one beat

# Examples

```jldoctest
julia> parse_music("o o| .| o| o| .| .| .| .| o o")
11-element Vector{Int64}:
 4
 2
 1
 2
 2
 1
 1
 1
 1
 4
 4
```
"""
function parse_music(music_string::String)::Vector{Int}
    # Define the mapping from note symbols to their durations
    note_durations = Dict("o" => 4, "o|" => 2, ".|" => 1)
    
    # Split the input string into individual note symbols
    notes = split(music_string)
    
    # Initialize an empty vector to store the durations
    durations = Vector{Int}()
    
    # Iterate over each note symbol and convert it to its duration
    for note in notes
        if haskey(note_durations, note)
            push!(durations, note_durations[note])
        else
            error("Unknown note symbol: $note")
        end
    end
    
    return durations
end