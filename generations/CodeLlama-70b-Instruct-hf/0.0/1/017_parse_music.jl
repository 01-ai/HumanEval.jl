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
    # Initialize an empty list to store the note durations
    note_durations = Int[]

    # Split the music string into individual notes
    notes = split(music_string, " ")

    # Iterate through each note
    for note in notes
        # Check if the note is a whole note
        if note == "o"
            # Append 4 to the note_durations list
            push!(note_durations, 4)
        # Check if the note is a half note
        elseif note == "o|"
            # Append 2 to the note_durations list
            push!(note_durations, 2)
        # Check if the note is a quarter note
        elseif note == ".|"
            # Append 1 to the note_durations list
            push!(note_durations, 1)
        end
    end

    # Return the note_durations list
    return note_durations
end
