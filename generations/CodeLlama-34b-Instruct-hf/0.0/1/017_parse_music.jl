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
    # Create a dictionary to map the musical notes to their duration
    note_durations = Dict("o" => 4, "o|" => 2, ".|" => 1)

    # Split the input string into individual notes
    notes = split(music_string, " ")

    # Create an empty vector to store the note durations
    note_durations = Int[]

    # Iterate over the notes and add their durations to the vector
    for note in notes
        push!(note_durations, note_durations[note])
    end

    return note_durations
end
