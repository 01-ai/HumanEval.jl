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



# Step-by-step outline:
# 1. Initialize an empty vector to store the duration of each note.
# 2. Split the input string by space to get each note.
# 3. Iterate over each note.
# 4. If the note is "o", append 4 to the vector.
# 5. If the note is "o|", append 2 to the vector.
# 6. If the note is ".|", append 1 to the vector.
# 7. Return the vector.

# Code:
function parse_music(music_string::String)::Vector{Int}
    # Initialize an empty vector to store the duration of each note
    note_durations = Int[]

    # Split the input string by space to get each note
    notes = split(music_string)

    # Iterate over each note
    for note in notes
        # If the note is "o", append 4 to the vector
        if note == "o"
            push!(note_durations, 4)
        # If the note is "o|", append 2 to the vector
        elseif note == "o|"
            push!(note_durations, 2)
        # If the note is ".|", append 1 to the vector
        elseif note == ".|"
            push!(note_durations, 1)
        end
    end

    # Return the vector
    return note_durations
end
