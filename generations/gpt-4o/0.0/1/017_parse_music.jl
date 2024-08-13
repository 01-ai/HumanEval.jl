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
    # Split the input string by spaces to get individual notes
    notes = split(music_string, " ")
    
    # Create a dictionary to map note symbols to their corresponding beats
    note_to_beats = Dict("o" => 4, "o|" => 2, ".|" => 1)
    
    # Initialize an empty vector to store the beats
    beats = Int[]
    
    # Iterate over each note and convert it to its corresponding beats
    for note in notes
        push!(beats, note_to_beats[note])
    end
    
    return beats
end
# Example usage
music_string = "o o| .| o| o| .| .| .| .| o o"
beats = parse_music(music_string)
println(beats)  # Output should be [4, 2, 1, 2, 2, 1, 1, 1, 1, 4, 4]
