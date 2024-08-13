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
    # Define a dictionary to map note symbols to their beat durations
    note_durations = Dict(
        "o"  => 4,
        "o|" => 2,
        ".|" => 1
    )

    # Initialize an empty vector to store the beat durations
    beat_durations = Vector{Int}()

    # Split the music string into individual notes
    notes = split(music_string, " ")

    # Iterate over each note and push its duration to the beat_durations vector
    for note in notes
        duration = get(note_durations, note, 0)
        push!(beat_durations, duration)
    end

    return beat_durations
end

# Example usage:
# julia> parse_music("o o| .| o| o| .| .| .| .| o o")
# 11-element Vector{Int64}:
#  4
#  2
#  1
#  2
#  2
#  1
#  1
#  1
#  1
#  4
#  4
