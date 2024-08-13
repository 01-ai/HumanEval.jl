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
    # Define a dictionary to map note symbols to their beat counts
    note_map = Dict(
        "\\o" => 4,   # whole note
        "\\o|" => 2,  # half note
        "\\.|" => 1   # quarter note
    )
    
    # Initialize an empty vector to store the beat counts
    beat_counts = Int[]
    
    # Initialize an empty string to build each note
    current_note = ""
    
    # Iterate through each character in the input string
    for char in music_string
        if char == '\\'
            # Start of a new note
            if !isempty(current_note)
                # Add the beat count for the previous note
                push!(beat_counts, get(note_map, current_note, 0))
            end
            current_note = "\\"
        elseif char in ['o', '|', '.']
            # Continue building the current note
            current_note *= char
        elseif !isempty(current_note)
            # End of a note (space or any other character)
            push!(beat_counts, get(note_map, current_note, 0))
            current_note = ""
        end
    end
    
    # Add the last note if there is one
    if !isempty(current_note)
        push!(beat_counts, get(note_map, current_note, 0))
    end
    
    return beat_counts
end
